#!/usr/bin/sh

home_dir=$HOME
dotfiles_dir=$HOME/dotfiles

# NeoBundle用のディレクトリの作成
mkdir -p $dotfiles_dir/.vim/bundle

# dotfilesへのシンボリックリンクを貼る
for file in `find $dotfiles_dir -maxdepth 1 -name '.*' -printf '%f\n'` ; do
	if [ $file != ".git" ]; then
		ln -sf $dotfiles_dir/$file $home_dir/$file
	fi
done

# NeoBundleが無かったらインストール
if [ ! -e $dotfiles_dir/.vim/bundle/neobundle.vim/.git ]; then
    git clone https://github.com/Shougo/neobundle.vim $dotfiles_dir/.vim/bundle/neobundle.vim
fi

