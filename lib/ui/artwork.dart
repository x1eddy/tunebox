import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../app/theme.dart';
import '../data/db/database.dart';
import 'motion.dart';

/// Resolves the best available artwork: the file we saved, else the thumbnail.
///
/// [size] is the widget's side in logical pixels; YouTube thumbnails are
/// fetched at the smallest variant that covers it. Asking for the 1280x720
/// `maxresdefault` everywhere made a list of twenty songs crawl on a phone.
ImageProvider? artworkImageProvider(Song? song, {int? size}) {
  if (song == null) return null;
  final path = song.artworkPath;
  if (path != null && path.isNotEmpty && File(path).existsSync()) {
    final image = FileImage(File(path));
    return size == null ? image : ResizeImage(image, width: size, height: size);
  }
  final url = song.artworkUrl;
  if (url == null || url.isEmpty) return null;
  final network = CachedNetworkImageProvider(youtubeThumbnail(url, size));
  if (size == null) return network;
  // Decode straight to the size it will be drawn at: uploading a 320x180
  // texture for a 152px cover was costing spiky raster frames while scrolling.
  final pixels = (size * 2).round();
  return ResizeImage(network, width: pixels, allowUpscaling: false);
}

/// Rewrites an i.ytimg.com thumbnail to the cheapest variant that still looks
/// sharp at [size] logical pixels (roughly 3x that in real pixels).
String youtubeThumbnail(String url, int? size) {
  final match = RegExp(
    r'^(https?://i\.ytimg\.com/vi(?:_webp)?/[\w-]{5,})/([\w]+)\.(jpg|webp)',
  ).firstMatch(url);
  if (match == null) return url;
  // Only `default`, `mqdefault` and `hq720` are 16:9. `hqdefault` and
  // `sddefault` are 4:3 with black bars baked in, which looked like a broken
  // image on the full-screen player.
  final variant = switch (size) {
    null => 'hq720', // full-screen player, 1280x720
    final s when s <= 120 => 'default', // 120x90, list rows
    final s when s <= 320 => 'mqdefault', // 320x180, shelf cards
    _ => 'hq720',
  };
  return '${match.group(1)}/$variant.${match.group(3)}';
}

/// Full-bleed background behind the player and detail headers.
///
/// A real blur over a full-screen image costs several milliseconds a frame on
/// a phone GPU. Stretching the 120x90 thumbnail across the screen looks the
/// same and costs nothing.
class CoverBackdrop extends StatelessWidget {
  const CoverBackdrop({super.key, required this.song, this.colors});

  final Song? song;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final provider = artworkImageProvider(song, size: 96);
    return Stack(
      fit: StackFit.expand,
      children: [
        if (provider != null)
          Image(
            image: provider,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.low,
            gaplessPlayback: true,
            errorBuilder: (_, _, _) => const SizedBox.shrink(),
          ),
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:
                  colors ??
                  [
                    t.colorScheme.surface.withValues(alpha: 0.78),
                    t.colorScheme.surface.withValues(alpha: 0.96),
                  ],
            ),
          ),
        ),
      ],
    );
  }
}

/// Square cover art with a deterministic placeholder when there is none.
class CoverArt extends StatelessWidget {
  const CoverArt({
    super.key,
    this.song,
    this.size,
    this.radius = R.card,
    this.circle = false,
    this.heroTag,
    this.seedText,
  });

  final Song? song;
  final double? size;
  final BorderRadius radius;
  final bool circle;
  final String? heroTag;

  /// Used by artist circles and playlists that have no song attached.
  final String? seedText;

  @override
  Widget build(BuildContext context) {
    final provider = artworkImageProvider(song, size: size?.round());
    final seed =
        seedText ??
        (song == null
            ? '?'
            : song!.album.isNotEmpty
            ? song!.album
            : song!.title);

    final label = seed.isEmpty ? (song?.id ?? '?') : seed;
    Widget child = provider == null
        ? _Placeholder(seed: label)
        : Image(
            image: provider,
            fit: BoxFit.cover,
            width: size,
            height: size,
            filterQuality: FilterQuality.low,
            gaplessPlayback: true,
            errorBuilder: (_, _, _) {
              final fallback = artworkImageProvider(song, size: 200);
              if (fallback == null) return _Placeholder(seed: label);
              return Image(
                image: fallback,
                fit: BoxFit.cover,
                width: size,
                height: size,
                filterQuality: FilterQuality.low,
                errorBuilder: (_, _, _) => _Placeholder(seed: label),
              );
            },
            frameBuilder: (context, child, frame, wasSync) {
              if (wasSync || frame != null) {
                // A cross-fade here means two composited layers per cover; on a
                // shelf of twenty that is the difference between a smooth
                // scroll and a stuttery one. Only the big player art fades.
                if (size != null) return child;
                return AnimatedOpacity(
                  opacity: 1,
                  duration: Motion.medium,
                  curve: Motion.decelerate,
                  child: child,
                );
              }
              return _Placeholder(seed: label);
            },
          );

    if (heroTag != null) child = Hero(tag: heroTag!, child: child);

    final shape = circle ? BorderRadius.circular((size ?? 200) / 2) : radius;
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: shape,
        // A plain hardware clip: antialiasing a clip per cover was costing
        // real milliseconds on a 120Hz budget.
        clipBehavior: Clip.hardEdge,
        child: child,
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.seed});
  final String seed;

  static const _pairs = [
    [Color(0xFF3F5EFB), Color(0xFFFC466B)],
    [Color(0xFFFF5E00), Color(0xFFFFD166)],
    [Color(0xFF00C9A7), Color(0xFF023E8A)],
    [Color(0xFF9B5DE5), Color(0xFFF15BB5)],
    [Color(0xFF00B4D8), Color(0xFF90E0EF)],
    [Color(0xFFD62828), Color(0xFFF77F00)],
    [Color(0xFF70C1B3), Color(0xFFFAE385)],
    [Color(0xFF818CF8), Color(0xFFEC4899)],
  ];

  @override
  Widget build(BuildContext context) {
    var hash = 0;
    for (final unit in seed.codeUnits) {
      hash = (hash * 31 + unit) & 0x7FFFFFFF;
    }
    final pair = _pairs[hash % _pairs.length];
    // Prefer a real letter — track numbers make for dull covers.
    final match = RegExp(r'\p{L}', unicode: true).firstMatch(seed);
    final letter = match?.group(0)?.toUpperCase() ?? '♪';

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: pair,
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Text(
            letter,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 56,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
