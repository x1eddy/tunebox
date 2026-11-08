package com.brito.tunebox

import android.content.Intent
import android.net.Uri
import androidx.core.content.FileProvider
import com.ryanheise.audioservice.AudioServiceActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import java.io.File

class MainActivity : AudioServiceActivity() {
    private val channel = "com.brito.tunebox/install"

    private val live = LiveVisualizer()

    override fun onDestroy() {
        live.stop()
        super.onDestroy()
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val messenger = flutterEngine.dartExecutor.binaryMessenger
        MethodChannel(messenger, "com.brito.tunebox/visualizer").setMethodCallHandler(live)
        EventChannel(messenger, "com.brito.tunebox/visualizer/frames").setStreamHandler(live)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    // Hands a downloaded APK to Android's own installer. The
                    // system then asks the user to confirm — an app cannot
                    // install anything by itself, and this does not try to.
                    "install" -> {
                        val path = call.argument<String>("path")
                        if (path == null) {
                            result.error("no_path", "path is required", null)
                            return@setMethodCallHandler
                        }
                        try {
                            val file = File(path)
                            val uri: Uri = FileProvider.getUriForFile(
                                this,
                                "$packageName.updates",
                                file,
                            )
                            val intent = Intent(Intent.ACTION_VIEW).apply {
                                setDataAndType(
                                    uri,
                                    "application/vnd.android.package-archive",
                                )
                                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            }
                            startActivity(intent)
                            result.success(null)
                        } catch (e: Exception) {
                            result.error("install_failed", e.message, null)
                        }
                    }
                    else -> result.notImplemented()
                }
            }
    }
}
