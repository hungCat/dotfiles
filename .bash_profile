# call this when I logged in.

# source the users bashrc if it exists
if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi

# environmental variables
export PATH=$PATH:/sbin:/usr/sbin:~/.local/bin	# path
export LIBRARY_PATH=$LIBRARY_PATH:~/.local/lib	# gcc/g++ lib path
export CPATH=$CPATH:~/.local/include			# gcc/g++ include path
export PAGER=less					# man
export EDITOR='/usr/bin/vim'		# visudo
# lessが便利に
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
#export LANG=ja_JP.UTF8				# char code
#export LC_ALL=ja_JP.UTF8			# char code
#export LC_MESSAGES=ja_JP.UTF8		# char code

# coreファイルを見たい時に、cygwinにもcoreファイルを吐かせる
#export CYGWIN="error_start=dumper.exe"

# for golang
#export GOROOT=/usr/local/go1.4.2
#export GOPATH=$HOME/prog/go
#export GOBIN=$GOPATH/bin
#export PATH=$PATH:$GOROOT/bin:$GOBIN


