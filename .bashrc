# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]
then
    source /etc/bashrc
fi

# Aliases
if [ -f ~/.bash_aliases ]
then
    source ~/.bash_aliases
fi

# Colors
if [ -f ~/.bash_colors ]
then
    source ~/.bash_colors
fi

# Source functions
if [ -f ~/.bash_functions ]
then
    source ~/.bash_functions
fi

# Colorize less
if [ -f ~/.less_termcap ]
then
    source ~/.less_termcap
fi

shopt -s cdspell extglob
# Always append, never overwrite
shopt -s histappend

# Immediately append new commands to the history file
PROMPT_COMMAND='history -a; history -n;'

# Optional: increase history size
HISTSIZE=100000
HISTFILESIZE=100000

# Include timestamps
HISTTIMEFORMAT="%F %T "

# Optional: ignore trivial commands
HISTIGNORE="bg:fg:history:pwd"

# User specific variables, aliases and functions
CVS_RSH=ssh
ENSCRIPT="-G"
LESS="-MRFSX"
LS_OPTIONS='--show-control-chars --color=auto'
NRI="--format ansi --width 70"
RSYNC_RSH=ssh
FQTTY=$(tty)
TTY=${FQTTY#/dev/}
USERNAME=${USERNAME:-${USER}}

export \
    CDPATH CVS_RSH ENSCRIPT ENV HISTSIZE HISTFILESIZE \
    HISTTIMEFORMAT HISTIGNORE LESS LS_OPTIONS NNTPSERVER \
    PROMPT_COMMAND NRI RSYNC_RSH USERNAME

case $TERM in
xterm* | dtterm | cygwin | linux | rxvt*)
    PS1="\[$bold\]"'[RC=$? HIST=\! CMD=\# JOBS=\j PID=$$ UMASK=$(umask)]'" \[$reset\]\n"'\d \t ${TERM} on ${TTY}\n\u'"\[$bold\]"'@'"\[$reset\]"'\h:\w\n'"\[$bold\]"'\$ '"\[$reset\]"
    PS2="${bold}> ${reset}"
    PS3="${bold}#? ${reset}"
    PS4="${bold}+ ${reset}"
    PROMPT_COMMAND=${PROMPT_COMMND}'echo -ne "\033]0;${HOSTNAME} on ${TTY}\007"'
    ;;
*)
    PS1='[RC=$? HIST=\! CMD=\# JOBS=\j PID=$$ UMASK=$(umask)]\n\d \t ${TERM} on ${TTY}\n\u@\h:\w\n\$ ' 
    PS2='> '
    unset PROMPT_COMMAND
    ;;
esac

export PS1 PS2 PS4 PROMPT_COMMAND

[ -z $INPUTRC ] && export INPUTRC=/etc/inputrc

# added by Anaconda3 4.0.0 installer
#export PATH="/home/ccowan/anaconda3/bin:/home/ccowan/.cask/bin:$PATH"

# PATH="/home/ccowan/perl5/bin${PATH:+:${PATH}}"; export PATH;
# PERL5LIB="/home/ccowan/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
# PERL_LOCAL_LIB_ROOT="/home/ccowan/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
# PERL_MB_OPT="--install_base \"/home/ccowan/perl5\""; export PERL_MB_OPT;
# PERL_MM_OPT="INSTALL_BASE=/home/ccowan/perl5"; export PERL_MM_OPT;

source /Users/ccowan/.config/broot/launcher/bash/br
