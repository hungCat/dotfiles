#!/bin/bash

# Detect .vimrc path.
VIMRC=$HOME/.vimrc

if [ ! -e $VIMRC ]; then
	VIMRC=$HOME/.vim/vimrc
fi

echo 'Start NeoBundleInstall.'

while read line; do
	# ブラックリストでチェック
	if [[ ! $line =~ ^(\[neobundle\] |\'runtimepath\'.*)$ ]]; then
		echo "$line"
	fi
done < <(vim -N -u $VIMRC -c "try | NeoBundleUpdate! $* | finally | qall! | endtry" \
	-U NONE -i NONE -V1 -e -s 2>&1)

echo 'Done.'
