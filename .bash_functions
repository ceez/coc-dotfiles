#!/bin/bash

reboot_to_windows() {
    WINDOWS_TITLE=`grep -i "^menuentry 'Windows" /boot/grub/grub.cfg|head -n 1|cut -d"'" -f2`
    sudo grub2-reboot "$WINDOWS_TITLE"
    sudo reboot
}

tag() {
    echo "Scanning dirs: . $@";
    find . "$@" -name \*.[ch] | tee cscope.files | etags - ;
    cscope -b;
}

wrapcmd() {
  local log_file=""
  local suppress_out=0
  local suppress_err=0

  # Parse options
  while [[ "$1" == --* ]]; do
    case "$1" in
      --quiet) suppress_err=1 ;;
      --silent) suppress_out=1; suppress_err=1 ;;
      --log) shift; log_file="$1" ;;
      --help)
        echo "Usage: wrapcmd [--quiet|--silent|--log FILE] command [args...]"
        return 0
        ;;
      *) echo "Unknown option: $1"; return 1 ;;
    esac
    shift
  done

  if [[ -z "$1" ]]; then
    echo "wrapcmd: missing command" >&2
    return 1
  fi

  if [[ "$suppress_out" == "1" && "$suppress_err" == "1" ]]; then
    "$@" > /dev/null 2>&1
  elif [[ "$suppress_err" == "1" ]]; then
    "$@" 2>/dev/null
  elif [[ -n "$log_file" ]]; then
    "$@" 2>&1 | tee -a "$log_file"
  else
    "$@"
  fi
}

dhl() {
    # Load directory stack from file
    BDH=${BASH_DIRSTACK_HISTORY:-~/.bash_dirstack_history}
    if [[ -f "${BDH}" ]]
    then
        while read -r dir
        do
	    # eval required for ~ expansion
            eval pushd -n "$dir" > /dev/null
        done < "${BDH}"
    else
	printf "Dirstack history file ${BDH} not found"
    fi
}

dhw() {
    # Write directory stack
    BDH=${BASH_DIRSTACK_HISTORY:-~/.bash_dirstack_history}
    cat "${BDH}" <(dirs -p) |
	grep -v -e "^~$" -e"${HOME}$" |
	sort -u -o "${BDH}"
}

dhr() {
    # Clean dirstack and reload from history file
    dirs -c
    dhl
}

dhc() {
    # Clear the dirstack history file
    cat /dev/null > "${BASH_DIRSTACK_HISTORY:-~/.bash_dirstack_history}"
}

clean_phone_pb() {
    # Clean phone number in pastebin of non-essential chars
    pbpaste | sed -E 's/[^+0-9]//g' | pbcopy
}
