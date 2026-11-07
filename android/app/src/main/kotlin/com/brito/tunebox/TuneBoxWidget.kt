package com.brito.tunebox

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.SharedPreferences
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Build
import android.view.KeyEvent
import android.view.View
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetLaunchIntent
import es.antonborri.home_widget.HomeWidgetProvider
import java.io.File

/**
 * Now playing on the home screen. The buttons send ordinary media-button
 * presses to the playback service, the same thing a headset button does, so
 * they work whether or not the app is open.
 */
class TuneBoxWidget : HomeWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences,
    ) {
        for (id in appWidgetIds) {
            val views = RemoteViews(context.packageName, R.layout.tunebox_widget)
            val title = widgetData.getString("title", null)
            views.setTextViewText(
                R.id.widget_title,
                title ?: context.getString(R.string.widget_idle),
            )
            views.setTextViewText(R.id.widget_artist, widgetData.getString("artist", "") ?: "")

            val art = widgetData.getString("art", null)?.let { File(it) }
            if (art != null && art.exists()) {
                val opts = BitmapFactory.Options().apply { inSampleSize = 2 }
                val bmp = BitmapFactory.decodeFile(art.path, opts)
                if (bmp != null) views.setImageViewBitmap(R.id.widget_art, bmp)
            } else {
                views.setImageViewResource(R.id.widget_art, R.mipmap.ic_launcher)
            }

            val playing = widgetData.getBoolean("playing", false)
            views.setImageViewResource(
                R.id.widget_play,
                if (playing) R.drawable.ic_w_pause else R.drawable.ic_w_play,
            )
            views.setContentDescription(
                R.id.widget_play,
                context.getString(if (playing) R.string.widget_pause else R.string.widget_play),
            )

            views.setOnClickPendingIntent(
                R.id.widget_root,
                HomeWidgetLaunchIntent.getActivity(context, MainActivity::class.java),
            )
            views.setOnClickPendingIntent(
                R.id.widget_mix,
                HomeWidgetLaunchIntent.getActivity(
                    context,
                    MainActivity::class.java,
                    Uri.parse("tunebox://app/home/mix"),
                ),
            )
            views.setOnClickPendingIntent(R.id.widget_prev, mediaButton(context, KeyEvent.KEYCODE_MEDIA_PREVIOUS))
            views.setOnClickPendingIntent(R.id.widget_play, mediaButton(context, KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE))
            views.setOnClickPendingIntent(R.id.widget_next, mediaButton(context, KeyEvent.KEYCODE_MEDIA_NEXT))
            views.setViewVisibility(R.id.widget_controls, if (title == null) View.GONE else View.VISIBLE)

            appWidgetManager.updateAppWidget(id, views)
        }
    }

    private fun mediaButton(context: Context, keyCode: Int): PendingIntent {
        val intent = Intent(Intent.ACTION_MEDIA_BUTTON).apply {
            component = ComponentName(context, "com.ryanheise.audioservice.MediaButtonReceiver")
            putExtra(Intent.EXTRA_KEY_EVENT, KeyEvent(KeyEvent.ACTION_DOWN, keyCode))
        }
        var flags = PendingIntent.FLAG_UPDATE_CURRENT
        if (Build.VERSION.SDK_INT >= 23) flags = flags or PendingIntent.FLAG_IMMUTABLE
        return PendingIntent.getBroadcast(context, keyCode, intent, flags)
    }
}
