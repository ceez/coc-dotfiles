#!/bin/zsh

export HOMEBREW_BIN=$(brew --prefix)/bin

case "$-" in
    *i*)
	# Interactive shell

	# My Aliases
	alias app_cask='EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs cask --path ~/.emacs.d/'
	alias bpoff='printf "\e[?2004l"'
	alias bpon='printf "\e[?2004h"'
	alias c='clear'
	alias caski='EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs cask --path ~/.emacs.d/ install'
	alias casku='EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs cask --path ~/.emacs.d/ update'
	alias dlc=' history -d $((HISTCMD-1))'
	alias dv='dirs -v'
	alias dw='dirs -p | grep -v "^~$" >> ~/.bash_dirstack_history; sort -u -o ~/.bash_dirstack_history ~/.bash_dirstack_history'
	alias gnu_cask='EMACS=/usr/local/bin/emacs cask --path ~/.emacs.d/'
	alias h='builtin history'
	alias hts="builtin history -fD"
	alias jsonf="python -m json.tool"
	alias jt='pushd ~/src/java_testbed'
	alias kc=${HOMEBREW_BIN}'/keychain --inherit any-once --ignore-missing --timeout 1200  $(ls ~/.ssh/* | xargs file | grep private | cut -d: -f1); source ~/.keychain/$(hostname)-sh'
	alias lop='/usr/local/bin/op signin --account my | tee ~/.op/env'
	if [ -x "${HOMEBREW_BIN}/gls" ]
	then
	    alias lsc="${HOMEBREW_BIN}/gls --color"
	else [ -x /bin/ls ]
	     alias lsc='/bin/ls -G'
	fi
	alias op="${HOMEBREW_BIN}/op"
	alias po='popd'
	alias pu='pushd'
	alias sbrc="source ~/.bashrc"
	alias skc="source ~/.keychain/$(hostname)-sh"
	alias sl="ssh-add -l"
	alias sop="source ~/.op/env"
	alias src='pushd ~/src'
	alias scppw='scp -o PubKeyAuthentication=no'
	alias sftppw='sftp -o PubKeyAuthentication=no'
	alias sshpw='ssh -o PubKeyAuthentication=no'
        # tmux shortcuts
        alias tconf="emacsclient -a '' -t ~/.tmux.conf"
        alias t="tmux"
        alias tn="tmux new"
        alias ta="tmux attach-session"
        alias trw="tmux rename-window"
        alias trs="tmux rename-session"	alias vcsc='vcsh csc'
	alias vl='vcsh launchd'
	alias xmlf="xmllint --format -"
	;;
    *)
	# Noninteractive shell
	;;
esac

