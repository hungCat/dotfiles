#!/usr/bin/sh

home_dir=$HOME
dotfiles_dir=$HOME/dotfiles

mkdir -p $dotfiles_dir/.vim/bundle

for files in `find $dotfiles_dir -name '.*' -printf '%f\n'` ; do
	if [ $files != ".git" ]; then
		ln -sf $dotfiles_dir/$files $home_dir/$files
	fi
done


if [ -e $dotfiles_dir/.vim ]; then
    #git clone https://github.com/Shougo/neobundle.vim $dotfiles_dir/.vim/bundle/neobundle.vim
fi

