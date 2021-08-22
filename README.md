# Yuzu (Unofficial) Install Script(s) for RetroPie

This will make directories for Yuzu, download the latest (LINUX) version, rename it to Yuzu.AppImage, move it to the /opt/retropie/emulators/bin folder and then configure it for use with RetroPie/Emulationstation.

## Prerequisites
Please first download/install Retropie on your Debian/Ubuntu device https://retropie.org.uk/docs/Debian/
***NOTE***
This would technically work with the Raspberry Pi version of RetroPie, but there is almost no point to that. The main purpose for this script is to be used with a full PC that is running the RPie software.

## Initial (First time ONLY) Configuration
Open a terminal and run:
```
mkdir scripts
cd /opt/retropie/emulators
mkdir yuzu/
```
Once finished, place "autoyuzu.sh" inside the `~/scripts` folder, and ensure it is executable

```
chmod +x ~/scripts/autoyuzu.sh
```

Next, edit `~/RetroPie-Setup/platforms.cfg` and add:

```
switch_exts=".NSI .XCI"
switch_fullname="Nintendo Switch"
```

Lastly, place the "yuzu.sh" file into `~/RetroPie-Setup/scriptmodules/emulators/`

## Using the Script

Using this script is simple, just launch RPie or in a terminal type `sudo ~/RetroPie-Setup/retropie_setup.sh`, update the Script and then install Yuzu (Pre-Compiled Binary) from `Packages > EXP > Yuzu`

This method also works for Updating the emulator from the menu as well and should not require any additional configuration after installing for the first time or updating

Cheers
