package com.rr.leeco_performance

import android.content.Context
import android.content.Intent
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.AsyncTask
import android.service.quicksettings.Tile
import android.service.quicksettings.TileService
import kotlinx.coroutines.experimental.delay
import android.graphics.drawable.Icon
import kotlinx.coroutines.experimental.launch
import android.R
import android.R.drawable

import com.rr.leeco_performance.R.drawable.ic_videogame_asset_black_24dp
import com.rr.leeco_performance.R.drawable.ic_battery_alert_black_24dp
import com.rr.leeco_performance.R.drawable.ic_battery_std_black_24dp


import kotlin.concurrent.thread
import android.R.id.edit
import android.content.SharedPreferences



class RRGamingMode: TileService() {
    override fun onTileAdded() {
        super.onTileAdded()

        if(getServiceStatus()==2) {
            // Turn on
            qsTile.state = Tile.STATE_ACTIVE
            qsTile.label = "Leeco Gaming Mode Active"
            qsTile.icon = Icon.createWithResource(getApplicationContext(),
                    ic_videogame_asset_black_24dp)


        } else {

            if(getServiceStatus()==0) {
                // Turn on
                qsTile.state = Tile.STATE_ACTIVE
                qsTile.label = "Leeco Powersave Mode Active"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_battery_alert_black_24dp)



            } else {

                // Turn off
                qsTile.state = Tile.STATE_INACTIVE
                qsTile.label = "Switch Leeco Performance Mode"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_battery_std_black_24dp)

            }
        }
        qsTile.updateTile()

    }

    override fun onClick() {
        super.onClick()

        if(qsTile.state == Tile.STATE_INACTIVE) {
            // Turn on

            val result = Shell.SH.run("setprop sys.leeco.performance_mode 2")
            if (result.isSuccessful) {


                if(getServiceStatus()==2) {
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label = "Leeco Gaming Mode Active"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_videogame_asset_black_24dp)


                } else {

                    if(getServiceStatus()==0) {
                        // Turn on
                        qsTile.state = Tile.STATE_ACTIVE
                        qsTile.label = "Leeco Powersave Mode Active"
                        qsTile.icon = Icon.createWithResource(getApplicationContext(),
                                ic_battery_alert_black_24dp)



                    } else {

                        // Turn off
                        qsTile.state = Tile.STATE_INACTIVE
                        qsTile.label = "Switch Leeco Performance Mode"
                        qsTile.icon = Icon.createWithResource(getApplicationContext(),
                                ic_battery_std_black_24dp)

                    }
                }

            }

        } else {

            if(getServiceStatus()==2) {
                // Turn on
                Shell.SH.run("setprop sys.leeco.performance_mode 0")


            }
            else
            {
                Shell.SH.run("setprop sys.leeco.performance_mode 1")

            }


            if(getServiceStatus()==2) {
                // Turn on
                qsTile.state = Tile.STATE_ACTIVE
                qsTile.label = "Leeco Gaming Mode Active"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_videogame_asset_black_24dp)


            } else {

                if(getServiceStatus()==0) {
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label = "Leeco Powersave Mode Active"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_alert_black_24dp)



                } else {

                    // Turn off
                    qsTile.state = Tile.STATE_INACTIVE
                    qsTile.label = "Switch Leeco Performance Mode"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_std_black_24dp)

                }
            }
        }
        // Update looks
        qsTile.updateTile()
    }

    // Access storage to see how many times the tile
    // has been tapped.
    private fun getServiceStatus(): Int {

        val perfenabled = Shell.SH.run("getprop sys.leeco.performance_mode")

        if(Integer.parseInt(perfenabled.getStdout()) > 1) {
            // Turn on
            return 2


        } else {
            if(Integer.parseInt(perfenabled.getStdout()) == 1 ) {
                // Turn on
                return 1


            }
            else {
                return 0
            }
        }

    }

}
