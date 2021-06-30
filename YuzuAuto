#A script to download latest Yuzu AppImage for Linux and place it in a folder for later use with RetroPie

#!/bin/bash

# Curl script to reach out to GitHub API, look for download url relating to .AppImage, cut, tr & wget it
curl -v -s https://api.github.com/repos/yuzu-emu/yuzu-mainline/releases/latest \
| grep "browser_download_url.*AppImage" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

# Make directory for recently CURL'ed file and move everything to it
mkdir ~/Desktop/yuzu
mv yuzu* ~/Desktop/yuzu

# Make a safe place, move yuzu to it and then rename it to something digestible
mkdir ~/yuzu && mv ~/Desktop/yuzu/yuzu-*.AppImage ~/yuzu/yuzu.AppImage

# Get rid of the leftover stuff
rm -r ~/Desktop/yuzu

#Allow execution of Yuzu.AppImage
chmod +x ~/yuzu/yuzu.AppImage
