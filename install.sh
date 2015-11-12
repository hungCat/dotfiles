#!/usr/bin/sh

home_dir=$HOME
dotfiles_dir=$HOME/dotfiles

for files in `find $dotfiles_dir -name '.*' -printf '%f\n'` ; do
	if [ $files != ".git" ]; then
		ln -sf $dotfiles_dir/$files $home_dir/$files
	fi
done
