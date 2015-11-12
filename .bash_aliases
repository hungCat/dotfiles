# aliases




# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# vim aliases
alias vialias="vim $HOME/.bash_aliases"
alias vibash="vim $HOME/.bashrc"
alias vibashp="vim $HOME/.bash_profile"
alias vivim="vim $HOME/.vimrc"

# some more ls aliases
alias ll='ls -AlFh --show-control-chars'
alias la='ls -CFal'
#alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ps='ps --sort=start_time'

alias g++='gcc -Wall -Wextra -Wpedantic'
alias g++='g++ -std=c++11 -Wall -Wextra -Wpedantic'

alias dl='docker ps -l -q'


