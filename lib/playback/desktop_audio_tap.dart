import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'live_audio.dart' show AudioFrame;

/// The real sound of TuneBox on a Linux desktop, for the visualiser.
///
/// It records only TuneBox's own playback stream (PulseAudio / PipeWire
/// "monitor stream" of our sink input) — never the microphone and never
/// other apps — and turns it into 32 spectrum bands and 64 wave samples,
/// about 30 times a second. Needs `pactl` and `parec`, which every
/// PulseAudio or PipeWire desktop has; without them it simply stays silent
/// and the visualiser animates on its own.
class DesktopAudioTap {
  DesktopAudioTap._();
  static final instance = DesktopAudioTap._();

  static const _rate = 22050;
  static const _fftSize = 1024;
  static const bandCount = 32, waveCount = 64;

  final _out = StreamController<AudioFrame>.broadcast();
  Stream<AudioFrame> get frames => _out.stream;

  Process? _rec;
  int? _stream;
  Timer? _scan, _frame;
  int _users = 0;

  // last second of audio, mono, -1..1
  final _ring = Float32List(_rate);
  int _write = 0;
  int _fresh = 0; // samples since the last frame
  int _pendingByte = -1;

  double _peakDb = -30, _peakAmp = 0.1;

  static bool? _available;
  static bool get available => _available ??=
      Platform.isLinux &&
      ['pactl', 'parec'].every(
        (t) => [
          '/usr/bin',
          '/bin',
          '/usr/local/bin',
        ].any((d) => File('$d/$t').existsSync()),
      );

  /// Starts (or keeps) the tap; pair every call with [stop].
  void start() {
    if (!available) return;
    _users++;
    if (_users > 1) return;
    unawaited(_rescan());
    _scan = Timer.periodic(
      const Duration(milliseconds: 1500),
      (_) => _rescan(),
    );
    _frame = Timer.periodic(const Duration(milliseconds: 33), (_) => _emit());
  }

  void stop() {
    if (_users == 0) return;
    _users--;
    if (_users > 0) return;
    _scan?.cancel();
    _frame?.cancel();
    _scan = _frame = null;
    _record(null);
  }

  /// Finds our playing stream. With crossfade there are two for a moment;
  /// the newest one is the song that is coming in.
  Future<void> _rescan() async {
    try {
      Future<List<dynamic>> list(String what) async {
        final r = await Process.run('pactl', ['-f', 'json', 'list', what]);
        if (r.exitCode != 0) return const [];
        final v = jsonDecode(r.stdout as String);
        return v is List ? v : const [];
      }

      // mpv's streams don't carry our process id themselves; their client
      // does. Match either.
      final ours = <String>{};
      for (final c in await list('clients')) {
        if (c is Map &&
            c['properties'] is Map &&
            '${(c['properties'] as Map)['application.process.id']}' == '$pid') {
          ours.add('${c['index']}');
        }
      }
      int? best;
      for (final s in await list('sink-inputs')) {
        if (s is! Map) continue;
        final props = s['properties'];
        final mine = ours.contains('${s['client']}') ||
            (props is Map && '${props['application.process.id']}' == '$pid');
        if (!mine || s['corked'] == true) continue;
        final index = s['index'];
        if (index is int && (best == null || index > best)) best = index;
      }
      if (_users > 0) _record(best);
    } catch (_) {}
  }

  void _record(int? stream) {
    if (stream == _stream && (_rec != null || stream == null)) return;
    _rec?.kill();
    _rec = null;
    _stream = stream;
    if (stream == null) return;
    unawaited(() async {
      try {
        final p = await Process.start('parec', [
          '--monitor-stream=$stream',
          '--format=s16le',
          '--rate=$_rate',
          '--channels=1',
          '--latency-msec=25',
          '--raw',
          '--client-name=TuneBox visualiser',
        ]);
        if (_stream != stream || _users == 0) {
          p.kill();
          return;
        }
        _rec = p;
        unawaited(p.stderr.drain<void>());
        p.stdout.listen(
          _onBytes,
          onDone: () {
            if (identical(_rec, p)) _rec = null;
          },
        );
      } catch (_) {}
    }());
  }

  void _onBytes(List<int> bytes) {
    var i = 0;
    if (_pendingByte >= 0 && bytes.isNotEmpty) {
      _push(_pendingByte | (bytes[0] << 8));
      _pendingByte = -1;
      i = 1;
    }
    for (; i + 1 < bytes.length; i += 2) {
      _push(bytes[i] | (bytes[i + 1] << 8));
    }
    if (i < bytes.length) _pendingByte = bytes[i];
  }

  void _push(int u16) {
    final s = u16 >= 0x8000 ? u16 - 0x10000 : u16;
    _ring[_write] = s / 32768.0;
    _write = (_write + 1) % _ring.length;
    _fresh++;
  }

  final _re = Float64List(_fftSize), _im = Float64List(_fftSize);
  static final _window = Float64List.fromList([
    for (var i = 0; i < _fftSize; i++)
      0.5 - 0.5 * cos(2 * pi * i / (_fftSize - 1)),
  ]);

  void _emit() {
    if (_fresh == 0 || !_out.hasListener) return; // paused or nobody looking
    _fresh = 0;
    final start = (_write - _fftSize + _ring.length) % _ring.length;
    var peak = 0.0;
    for (var i = 0; i < _fftSize; i++) {
      final v = _ring[(start + i) % _ring.length];
      peak = max(peak, v.abs());
      _re[i] = v * _window[i];
      _im[i] = 0;
    }
    _fft(_re, _im);

    // 32 bands spaced like hearing works: 40 Hz .. 10 kHz, log scale
    final bands = Float32List(bandCount);
    const lo = 40.0, hi = 10000.0;
    const binHz = _rate / _fftSize;
    var frameMax = -120.0;
    final db = Float64List(bandCount);
    for (var b = 0; b < bandCount; b++) {
      final f0 = lo * pow(hi / lo, b / bandCount);
      final f1 = lo * pow(hi / lo, (b + 1) / bandCount);
      var k0 = (f0 / binHz).floor(), k1 = (f1 / binHz).ceil();
      k0 = k0.clamp(1, _fftSize ~/ 2 - 1);
      k1 = k1.clamp(k0 + 1, _fftSize ~/ 2);
      var sum = 0.0;
      for (var k = k0; k < k1; k++) {
        sum = max(sum, sqrt(_re[k] * _re[k] + _im[k] * _im[k]));
      }
      // music loses energy towards the treble; tilt it back so the right
      // side of the bars moves too
      final tilt = 4.5 * log(f0 / lo) / ln2 / 2;
      db[b] = 20 * log(sum + 1e-9) / ln10 + tilt;
      frameMax = max(frameMax, db[b]);
    }
    // automatic gain: quiet and loud songs both fill the strip
    _peakDb = frameMax > _peakDb ? frameMax : _peakDb - 0.15;
    // a 36 dB window under the loudest recent band, then a curve so the
    // bars fall back between beats instead of hovering half-way
    const range = 36.0;
    for (var b = 0; b < bandCount; b++) {
      final v = ((db[b] - (_peakDb - range)) / range).clamp(0.0, 1.0);
      bands[b] = pow(v, 1.6).toDouble();
    }
    if (frameMax < -60) bands.fillRange(0, bandCount, 0); // silence

    _peakAmp = peak > _peakAmp ? peak : max(0.02, _peakAmp * 0.995);
    final wave = Float32List(waveCount);
    const step = _fftSize ~/ waveCount;
    for (var i = 0; i < waveCount; i++) {
      var acc = 0.0;
      for (var j = 0; j < step; j++) {
        acc += _ring[(start + i * step + j) % _ring.length];
      }
      wave[i] = (acc / step / _peakAmp * 1.6).clamp(-1.0, 1.0);
    }
    _out.add(AudioFrame(bands, wave));
  }

  /// In-place radix-2 FFT.
  static void _fft(Float64List re, Float64List im) {
    final n = re.length;
    for (var i = 1, j = 0; i < n; i++) {
      var bit = n >> 1;
      for (; j & bit != 0; bit >>= 1) {
        j ^= bit;
      }
      j ^= bit;
      if (i < j) {
        final tr = re[i];
        re[i] = re[j];
        re[j] = tr;
        final ti = im[i];
        im[i] = im[j];
        im[j] = ti;
      }
    }
    for (var len = 2; len <= n; len <<= 1) {
      final ang = -2 * pi / len;
      final wr = cos(ang), wi = sin(ang);
      for (var i = 0; i < n; i += len) {
        var cr = 1.0, ci = 0.0;
        for (var j = 0; j < len ~/ 2; j++) {
          final ar = re[i + j], ai = im[i + j];
          final br = re[i + j + len ~/ 2] * cr - im[i + j + len ~/ 2] * ci;
          final bi = re[i + j + len ~/ 2] * ci + im[i + j + len ~/ 2] * cr;
          re[i + j] = ar + br;
          im[i + j] = ai + bi;
          re[i + j + len ~/ 2] = ar - br;
          im[i + j + len ~/ 2] = ai - bi;
          final nr = cr * wr - ci * wi;
          ci = cr * wi + ci * wr;
          cr = nr;
        }
      }
    }
  }
}
