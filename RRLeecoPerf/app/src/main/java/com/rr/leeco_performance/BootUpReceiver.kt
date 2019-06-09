package com.rr.leeco_performance


import android.content.Intent
import android.content.Context
import android.content.BroadcastReceiver


class BootUpReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val RRGamingMode = RRGamingMode()
        RRGamingMode.onStartListening()
    }
}


