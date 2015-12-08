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
#alias vivim="vim $HOME/.vimrc"
alias vivim="vim $HOME/.vim/conf.d"
alias vineo="vim $HOME/.vim/conf.d/00-neobundle.vim"
alias vfiler="vim +VimFiler"

# some more ls aliases
alias ll='ls -AlFh --show-control-chars'
alias la='ls -CFal'
#alias l='ls -CF'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias ps='ps --sort=start_time'

alias gcc='gcc -Wall -Wextra -Wpedantic'
alias g++='g++ -Wall -Wextra -Wpedantic -std=c++11' # -std=c++1y

# 自動で名前つけてくれる子
function gpp() {
	TARGET=$1
	shift
	g++ $TARGET -o `echo $TARGET | sed s/.cpp$//` $@
}

# for docker
alias dl='docker ps -l -q'

# grepfind: to grep through files found by find, e.g. grepf pattern '*.c'
# note that 'grep -r pattern dir_name' is an alternative if want all files 
grepfind () { find . -type f -name "$2" -print0 | xargs -0 grep "$1" ; }
# I often can't recall what I named this alias, so make it work either way: 
alias findgrep='grepfind'
