package com.brito.tunebox

import android.media.audiofx.Visualizer
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlin.math.hypot
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

/**
 * Reads TuneBox's own playback (never the microphone) through Android's
 * audio-effect Visualizer and streams it to Dart as 32 spectrum bands and a
 * 64-point waveform, about 20 times a second. Android asks for the
 * record-audio permission for this API even though only the app's own audio
 * session is read.
 */
class LiveVisualizer : MethodChannel.MethodCallHandler, EventChannel.StreamHandler {
    private var visualizer: Visualizer? = null
    private var sink: EventChannel.EventSink? = null
    private var session = -1
    private val bands = FloatArray(32)
    private val wave = FloatArray(64)

    override fun onMethodCall(call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "start" -> {
                val id = call.argument<Int>("session") ?: 0
                try {
                    start(id)
                    result.success(true)
                } catch (e: Exception) {
                    stop()
                    result.success(false)
                }
            }
            "stop" -> { stop(); result.success(null) }
            else -> result.notImplemented()
        }
    }

    private fun start(id: Int) {
        if (id == session && visualizer != null) return
        stop()
        val v = Visualizer(id)
        v.captureSize = Visualizer.getCaptureSizeRange()[1].coerceAtMost(1024)
        v.scalingMode = Visualizer.SCALING_MODE_NORMALIZED
        val rate = min(Visualizer.getMaxCaptureRate(), 20000)
        v.setDataCaptureListener(object : Visualizer.OnDataCaptureListener {
            override fun onWaveFormDataCapture(vis: Visualizer?, data: ByteArray?, sr: Int) {
                if (data == null) return
                val step = data.size / wave.size
                for (i in wave.indices) {
                    // unsigned 8-bit around 128
                    wave[i] = ((data[i * step].toInt() and 0xFF) - 128) / 128f
                }
            }

            override fun onFftDataCapture(vis: Visualizer?, fft: ByteArray?, sr: Int) {
                if (fft == null) return
                val n = fft.size / 2
                // log-spaced bands: music lives in the low end
                for (b in bands.indices) {
                    val lo = max(1, (n.toDouble().pow(b / bands.size.toDouble())).toInt())
                    val hi = max(lo + 1, (n.toDouble().pow((b + 1) / bands.size.toDouble())).toInt())
                    var peak = 0.0
                    for (k in lo until min(hi, n)) {
                        val re = fft[2 * k].toDouble()
                        val im = fft[2 * k + 1].toDouble()
                        peak = max(peak, hypot(re, im))
                    }
                    // decibels, mapped to 0..1
                    val db = 20 * ln(max(peak, 1e-3)) / ln(10.0)
                    bands[b] = ((db - 5) / 37).toFloat().coerceIn(0f, 1f)
                }
                sink?.success(mapOf("b" to bands.copyOf(), "w" to wave.copyOf()))
            }
        }, rate, true, true)
        v.enabled = true
        visualizer = v
        session = id
    }

    fun stop() {
        try {
            visualizer?.enabled = false
            visualizer?.release()
        } catch (_: Exception) {}
        visualizer = null
        session = -1
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) { sink = events }
    override fun onCancel(arguments: Any?) { sink = null; stop() }
}
