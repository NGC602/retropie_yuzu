# Yuzu Install Script(s) for RetroPie

This will make directories for Yuzu, download the latest (LINUX) version, rename it to Yuzu.AppImage and move it to the /opt/retropie/emulators folder.

## Initial Configuration
Open a terminal and run:
```
mkdir scripts
```
Once finished, place "autoyuzu.sh" inside the folder, and ensure it is executable
```
chmod +x scripts/autoyuzu.sh
```

Next, edit the following file `~/RetroPie-Setup/platforms.cfg` and add:

```
switch_exts=".NSI .XCI"
switch_fullname="Nintendo Switch"
```

Lastly, place the "yuzu.sh" file into `~/RetroPie-Setup/scriptmodules/emulators/`

## Using the Script

Using this script is simple, just launch RPie or in a terminal type `sudo ~/RetroPie-Setup/retropie_setup.sh`, update the Script and then install Yuzu (Pre-Compiled Binary) from `Packages > EXP > Yuzu`
