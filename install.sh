#!/usr/bin/sh

readonly HOME_DIR=$HOME
readonly DOTFILES_DIR="$HOME_DIR/dotfiles"
readonly BUNDLE_DIR="$DOTFILES_DIR/.vim/bundle"
readonly NEOBUNDLE_DIR="$BUNDLE_DIR/neobundle.vim"

# NeoBundle用のディレクトリの作成
mkdir -p $BUNDLE_DIR

# dotfilesへのシンボリックリンクを貼る
for file in `find $DOTFILES_DIR -maxdepth 1 -name '.*' -printf '%f\n'` ; do
	if [ $file != ".git" ]; then
		ln -vnsf $DOTFILES_DIR/$file $HOME_DIR/$file
	fi
done

# NeoBundleが無かったらインストール
if [ ! -e $NEOBUNDLE_DIR ]; then
	echo ''
	echo 'Clone NeoBundle.'
	git clone https://github.com/Shougo/neobundle.vim "$NEOBUNDLE_DIR"
	echo 'Done.'
	./neoinstall.sh
fi

