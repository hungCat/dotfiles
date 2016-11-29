# call this when I logged in.

# environmental variables
export PATH=$PATH:/sbin:/usr/sbin:~/.local/bin  # path
export LIBRARY_PATH=$LIBRARY_PATH:~/.local/lib  # gcc/g++ lib path
export CPATH=$CPATH:~/.local/include            # gcc/g++ include path
export PAGER="less -R"                          # man
export EDITOR=vim                               # visudo
export TERM=xterm-256color
# lessが便利に
export LESS='-R -X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'
# locales
export LANG=en_US.UTF8                  # char code
#export LANG=ja_JP.UTF8                  # char code
export LC_ALL=                          # char code
#export LC_MESSAGES=ja_JP.UTF8          # char code
export OUTPUT_CHARSET=utf-8
# GUIに指定されている場合はunsetすべき
unset SSH_ASKPASS

# coreファイルを見たい時に、cygwinにもcoreファイルを吐かせる
#export CYGWIN="error_start=dumper.exe"

# for golang
export GOROOT=/usr/local/go
export GOPATH=$HOME/workspace/prog/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN

# for nvim
export XDG_CONFIG_HOME=$HOME/.config

# source the users bashrc if it exists
if [ -f ~/.bashrc ] ; then
    source ~/.bashrc
fi


