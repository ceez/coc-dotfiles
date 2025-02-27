#!/bin/zsh


export ALTERNATE_EDITOR=''	
export CSCOPE_EDITOR="emacsclient -a '' -t"
export CVS_RSH=ssh
export EDITOR="emacsclient -a '' -t"
export ENSCRIPT="-G -D:DUplex:true"
export FCEDIT="emacsclient -a '' -t"
export GIT_EDITOR="emacsclient -a '' -t"
export GREP_OPTIONS='--color=always'
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=10000
export HISTSIZE=5000
#export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.ssh/new_homebrew_github_api_token)
export LS_OPTIONS='--show-control-chars --color=auto'
export MANPAGER='less -s -M +Gg'
export PDSH_GENDERS_DIR=${HOME}/.dsh/
export RI="--format ansi --width 70"
export RSYNC_RSH=ssh
export SSL_CERT_DIR=${HOME}/.cacerts
export SVN_EDITOR="emacsclient -q -t"
export USERNAME=${USERNAME:-${USER}}
