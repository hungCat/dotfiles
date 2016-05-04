# call this when I logged in.

# environmental variables
export PATH=$PATH:/sbin:/usr/sbin:~/.local/bin	# path
export LIBRARY_PATH=$LIBRARY_PATH:~/.local/lib	# gcc/g++ lib path
export CPATH=$CPATH:~/.local/include			# gcc/g++ include path
export PAGER=less					# man
export EDITOR='/usr/bin/vim'		# visudo
# lessが便利に
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
# locales
#export LANG=ja_JP.UTF8				# char code
export LANG=en_US.UTF8				# char code
export LC_ALL=	  					# char code
#export LC_MESSAGES=ja_JP.UTF8		# char code
# GUIに指定されている場合はunsetすべき
unset SSH_ASKPASS

# coreファイルを見たい時に、cygwinにもcoreファイルを吐かせる
#export CYGWIN="error_start=dumper.exe"

# for golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/workspace/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN


# source the users bashrc if it exists
if [ -f ~/.bashrc ] ; then
  source ~/.bashrc
fi


