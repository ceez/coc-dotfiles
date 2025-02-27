# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
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

# User specific variables, aliases and functions
CDPATH=.:..:../..:~:~/News/Pan:/usr/local:/usr:/var:/tmp 
CVS_RSH=ssh
ENSCRIPT="-G"
ENV=${HOME}/.bashrc
LESS="-MMRFSX"
LS_OPTIONS='--show-control-chars --color=auto'
NNTPSERVER=news2.realtime.net 
RI="--format ansi --width 70"
RSYNC_RSH=ssh
USERNAME=${USERNAME:-${USER}}

export \
    CDPATH CVS_RSH ENSCRIPT ENV LESS LS_OPTIONS NNTPSERVER RI RSYNC_RSH USERNAME

case $TERM in
xterm* | dtterm | cygwin | linux | rxvt*)
    PS1="\[$bold\]"'[RC=$? HIST=\! CMD=\# JOBS=\j PID=$$ UMASK=$(umask)]'" \[$reset\]\n"'\d \t ${TERM} on $(/usr/bin/tty)\n\u'"\[$bold\]"'@'"\[$reset\]"'\h:\w\n'"\[$bold\]"'\$ '"\[$reset\]"
    PS2="\[$bold\]"'> '"\[$reset\]"
    PS4="\[$bold\]"'+ '"\[$reset\]"
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}:${PWD} on $(/usr/bin/tty)\007"'
    ;;
*)
    PS1='[RC=$? HIST=\! CMD=\# JOBS=\j PID=$$ UMASK=$(umask)]\n\d \t ${TERM} on $(/usr/bin/tty)\n\u@\h:\w\n\$ ' 
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
