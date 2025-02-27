#!/bin/bash

function reboot_to_windows() {
    WINDOWS_TITLE=`grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2`
    sudo grub2-reboot "$WINDOWS_TITLE"
    sudo reboot
}

function tag() {
    echo "Scanning dirs: . $@";
    find . "$@" -name \*.[ch] | tee cscope.files | etags - ;
    cscope -b;
}

