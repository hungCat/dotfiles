#!/usr/bin/sh

readonly HOME_DIR=$HOME
readonly DOTFILES_DIR=$HOME_DIR/dotfiles

# NeoBundle用のディレクトリの作成
mkdir -p $DOTFILES_DIR/.vim/bundle

# dotfilesへのシンボリックリンクを貼る
for file in `find $DOTFILES_DIR -maxdepth 1 -name '.*' -printf '%f\n'` ; do
	if [ $file != ".git" ]; then
		ln -sf $DOTFILES_DIR/$file $HOME_DIR/$file
	fi
done

# NeoBundleが無かったらインストール
if [ ! -e $DOTFILES_DIR/.vim/bundle/neobundle.vim/.git ]; then
    git clone https://github.com/Shougo/neobundle.vim $DOTFILES_DIR/.vim/bundle/neobundle.vim
fi

