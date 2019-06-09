package com.rr.leeco_performance

import android.service.quicksettings.Tile
import android.service.quicksettings.TileService


import android.graphics.drawable.Icon


import com.rr.leeco_performance.R.drawable.ic_videogame_asset_black_24dp
import com.rr.leeco_performance.R.drawable.ic_battery_alert_black_24dp
import com.rr.leeco_performance.R.drawable.ic_battery_std_black_24dp

val PREFS_FILENAME = "com.rr.leeco_performance.prefs"

class RRGamingMode: TileService() {


    override fun onTileAdded() {
        super.onTileAdded()

        val prefs = this.getSharedPreferences(PREFS_FILENAME, 0)

        val currentMode = prefs.getInt("RRLeecoCurrentMode", 1);

        val result = Shell.SH.run("setprop sys.leeco.performance_mode " + currentMode)
        if (result.isSuccessful) {
            if (currentMode == 2) {
                // Turn on
                qsTile.state = Tile.STATE_ACTIVE
                qsTile.label = "Leeco GamingMode"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_videogame_asset_black_24dp)


            } else {

                if (currentMode == 0) {
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label = "Leeco PowerSave"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_alert_black_24dp)


                } else {

                    // Turn off
                    qsTile.state = Tile.STATE_INACTIVE
                    qsTile.label = "Leeco Normal"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_std_black_24dp)

                }
            }
            qsTile.updateTile()
        }
    }


    override fun onStartListening() {
        super.onStartListening()

        val prefs = this.getSharedPreferences(PREFS_FILENAME, 0)

        val currentMode = prefs.getInt("RRLeecoCurrentMode", 1);

        val result = Shell.SH.run("setprop sys.leeco.performance_mode " + currentMode)

        if (result.isSuccessful) {
            if (currentMode == 2) {
                // Turn on
                qsTile.state = Tile.STATE_ACTIVE
                qsTile.label = "Leeco GamingMode"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_videogame_asset_black_24dp)


            } else {

                if (currentMode == 0) {
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label  = "Leeco PowerSave"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_alert_black_24dp)


                } else {

                    // Turn off
                    qsTile.state = Tile.STATE_INACTIVE
                    qsTile.label = "Leeco Normal"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_std_black_24dp)


                }
            }

            qsTile.updateTile()

        }

    }

    override fun onClick() {
        super.onClick()

        val prefs = this.getSharedPreferences(PREFS_FILENAME, 0)


        val editor = prefs.edit()


        if(qsTile.state == Tile.STATE_INACTIVE) {
            // Turn on

            val result = Shell.SH.run("setprop sys.leeco.performance_mode 2")
            if (result.isSuccessful) {

                editor.putInt("RRLeecoCurrentMode",2)
                editor.apply()
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label = "Leeco GamingMode"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_videogame_asset_black_24dp)



            }

        } else {

            if(getServiceStatus()==2) {
                // Turn on
                Shell.SH.run("setprop sys.leeco.performance_mode 0")
                editor.putInt("RRLeecoCurrentMode",0)
                editor.apply()

            }
            else
            {
                Shell.SH.run("setprop sys.leeco.performance_mode 1")
                editor.putInt("RRLeecoCurrentMode",1)
                editor.apply()
            }


            if(getServiceStatus()==2) {
                // Turn on
                qsTile.state = Tile.STATE_ACTIVE
                qsTile.label = "Leeco GamingMode"
                qsTile.icon = Icon.createWithResource(getApplicationContext(),
                        ic_videogame_asset_black_24dp)


            } else {

                if(getServiceStatus()==0) {
                    // Turn on
                    qsTile.state = Tile.STATE_ACTIVE
                    qsTile.label  = "Leeco PowerSave"
                    qsTile.icon = Icon.createWithResource(getApplicationContext(),
                            ic_battery_alert_black_24dp)



                } else {

                    // Turn off
                    qsTile.state = Tile.STATE_INACTIVE
                    qsTile.label = "Leeco Normal"
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
