#!/usr/bin/sh

readonly HOME_DIR=$HOME
readonly DOTFILES_DIR="$HOME_DIR/dotfiles"
readonly BUNDLE_DIR="$DOTFILES_DIR/.vim/bundle"
readonly NEOBUNDLE_DIR="$BUNDLE_DIR/neobundle.vim"

# dotfilesへのシンボリックリンクを貼る
for file in `find $DOTFILES_DIR -maxdepth 1 -name '.*' -printf '%f\n'` ; do
	if [ $file != ".git" ]; then
		if [ ! -L $HOME_DIR/$file ]; then
			rm -rf $HOME_DIR/$file
		fi
		ln -vnsf $DOTFILES_DIR/$file $HOME_DIR/$file
	fi
done

# NeoBundleが無かったらインストール
# if [ ! -e $NEOBUNDLE_DIR ]; then
# 	echo ''
# 	echo 'Clone NeoBundle.'
# 
# 	# NeoBundle用のディレクトリの作成
# 	mkdir -p $BUNDLE_DIR
# 	git clone https://github.com/Shougo/neobundle.vim "$NEOBUNDLE_DIR"
# 	echo 'Done.'
# 	bash $DOTFILES_DIR/neoinstall.sh
# fi

