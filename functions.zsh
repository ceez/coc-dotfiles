#!/bin/zsh

function opwcred() {
    tags=${(j:,:)@}
    op item list --tags ${tags} --format=json |
	op item get --fields credential --reveal - 
}

function opwtag() {
    tags=${(j:,:)@}
    op item list --tags ${tags} --format=json |
	op item get --fields password --reveal - 
}

function reboot_to_windows() {
    if [ ($uname -o) = "Linux" ]
    then
	WINDOWS_TITLE=$(grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2)
	sudo grub2-reboot "$WINDOWS_TITLE"
	sudo reboot
    fi
}

function tag_c() {
    echo "Scanning dirs: . $@";
    find . "$@" -name '*.[ch]' | tee cscope.files | etags - ;
    cscope -b;
}


