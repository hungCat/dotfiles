#!/bin/bash

# Detect .vimrc path.
VIMRC=$HOME/.vimrc

if [ ! -e $VIMRC ]; then
	VIMRC=$HOME/.vim/vimrc
    if [ ! -e $VIMRC ]; then
        echo "No vimrc."
        exit 1
    fi
fi

echo 'Start NeoBundleUpdate.'

while read line; do
	# ブラックリストでチェック
	if [[ ! $line =~ ^(\[neobundle\] |\'runtimepath\'.*)$ ]]; then
		echo "$line"
	fi
done < <(vim -N -u $VIMRC -c "try | NeoBundleUpdate! $* | finally | qall! | endtry" \
	-U NONE -i NONE -V1 -e -s 2>&1)

echo 'Done.'
