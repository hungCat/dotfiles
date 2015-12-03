#!/usr/bin/sh

home_dir=$HOME
dotfiles_dir=$HOME/dotfiles

# NeoBundle用のディレクトリの作成
mkdir -p $dotfiles_dir/.vim/bundle

# dotfilesへのシンボリックリンクを貼る
for files in `find $dotfiles_dir -maxdepth 1 -name '.*' -printf '%f\n'` ; do
	if [ $files != ".git" ]; then
		ln -sf $dotfiles_dir/$files $home_dir/$files
	fi
done

# NeoBundleが無かったらインストール
if [ ! -e $dotfiles_dir/.vim/bundle/neobundle.vim/.git ]; then
    git clone https://github.com/Shougo/neobundle.vim $dotfiles_dir/.vim/bundle/neobundle.vim
fi

