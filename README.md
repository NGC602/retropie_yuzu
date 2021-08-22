# Yuzu (Unofficial) Install Script(s) for Linux RetroPie

This will make directories for Yuzu, download the latest (LINUX) version, rename it to Yuzu.AppImage, move it to the /opt/retropie/emulators/bin folder and then configure it for use with RetroPie/Emulationstation.

***NOTE***
This would technically work with the Raspberry Pi version of RetroPie, but there is almost no point to that considering the low power of a Raspi and the necessary processing power needed by Yuzu. The main purpose for this script is to be used with a full PC that is running the RPie software.

## Prerequisites
Please first download & install Retropie on your Debian/Ubuntu device https://retropie.org.uk/docs/Debian/

***THEME***
For theme data, make sure you use The following Pixel theme instead of the Default EmulationStation Pixel theme (just replace the theme folder in ```/etc/emulationstation/themes/pixel``` with the one you downloaded
https://drive.google.com/drive/folders/1Z6WVm87CJh4GUo4T18UdSVfujdlyuAjU?usp=sharing

### Initial (First time ONLY) Script Configuration

***These steps should only be performed if this is your first time using this script. If you have followed this guide before and you use this script, please instead just run the RetroPie-Setup and update the package via `Packages > EXP > Yuzu`***

***Do not use `sudo`*** for any of the below commands ***unless specifically advised to***, Root should not own or control Yuzu

1) Open a terminal and run:
```
mkdir scripts
cd /opt/retropie/emulators
mkdir yuzu/
```
2) Once finished, place "autoyuzu.sh" inside the `~/scripts` folder, and ensure it is executable

```
chmod +x ~/scripts/autoyuzu.sh
```

3) Next, edit `~/RetroPie-Setup/platforms.cfg` and add:

```
switch_exts=".NSI .XCI"
switch_fullname="Nintendo Switch"
```

4) Lastly, place the "yuzu.sh" file into `~/RetroPie-Setup/scriptmodules/emulators/`

### Using the Script

Using this script is simple, just launch RPie or in a terminal type `sudo ~/RetroPie-Setup/retropie_setup.sh`, update the Script and then install Yuzu (Pre-Compiled Binary) from `Packages > EXP > Yuzu`

This method script also works for Updating the emulator from the menu as well and should not require any additional configuration after installing for the first time or updating. Just go in the RetroPie-Setup to `Packages > EXP > Yuzu` and choose `Update (from Pre-Compiled Binary)` after it has been installed for the first time

Cheers

***Shoutout***
If you are viewing this page, you may also be interested in checking out this script for adding RPCS3 to the RetroPie menu
https://github.com/raelgc/retropie_rpcs3
Please note about the RPCS3 script: Modern installations of RetroPie no longer store `platforms.cfg` in `/opt/retropie/configs/all/` please instead repeat step 4 on *THIS PAGE* for RPCS3 to add Fullname and EXTS to the correct plaforms.cfg file. 
If you do NOT do this step either for RPCS3 or Yuzu, every time you update the emulator through RetroPie-Setup you will have to add the Fullname and supported file extenstions (exts) to `/etc/emulationstation/es_systems.cfg`
