#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="yuzu"
rp_module_desc="Switch Emulator Yuzu"
rp_module_help="ROM Extensions: .xci .nsi\n\nCopy your Switch games to $romdir/switch\n\nDon't forget to run system firmware update first!"
rp_module_licence="GPL2 https://github.com/yuzu-emu/yuzu/blob/master/license.txt"
rp_module_section="exp"
rp_module_flags="!arm"

function install_bin_yuzu() {
    mkdir -p "$md_inst/bin"
    sh ~/scripts/autoyuzu.sh -O "$md_inst/bin/yuzu.AppImage"
    chmod +x "$md_inst/bin/yuzu.AppImage"
}

function configure_yuzu() {
    mkRomDir "switch"
    addEmulator 0 "$md_id" "switch" "$md_inst/bin/yuzu.AppImage -f -g %ROM%"
    addSystem "switch"
}
