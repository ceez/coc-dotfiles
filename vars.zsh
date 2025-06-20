#!/bin/zsh

export ALTERNATE_EDITOR=''	
export CSCOPE_EDITOR="emacsclient -a '' -t"
export CVS_RSH=ssh
export EDITOR="emacsclient -a '' -t"
export ENSCRIPT="-G -D:DUplex:true"
export FCEDIT="emacsclient -a '' -t"
export GIT_EDITOR="emacsclient -a '' -t"
export GREP_OPTIONS='--color=always'
export HISTFILESIZE=100000
export HISTSIZE=100000

# History behavior options
setopt INC_APPEND_HISTORY       # Write each command to history immediately
setopt SHARE_HISTORY            # Share history across all sessions
setopt HIST_IGNORE_ALL_DUPS     # Keep only the most recent copy of duplicate commands
setopt HIST_REDUCE_BLANKS       # Remove extra spaces
setopt HIST_VERIFY              # Let you edit before running recalled command
setopt HIST_EXPIRE_DUPS_FIRST   # Prefer dropping older duplicates

# Optional but helpful
setopt EXTENDED_HISTORY         # Save timestamps in the history file
setopt HIST_FIND_NO_DUPS        # Avoid showing duplicates during search

#export HOMEBREW_GITHUB_API_TOKEN=$(cat ~/.ssh/new_homebrew_github_api_token)
export LS_OPTIONS='--show-control-chars --color=auto'
export MANPAGER='less -s -M +Gg'
export PDSH_GENDERS_DIR=${HOME}/.dsh/
export RI="--format ansi --width 70"
export RSYNC_RSH=ssh
export SSL_CERT_DIR=${HOME}/.cacerts
export SVN_EDITOR="emacsclient -q -t"
export USERNAME=${USERNAME:-${USER}}
