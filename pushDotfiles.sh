#!/bin/sh

. $HOME/.tools/myfunctions

readonly BEFORE_DIR=$(pwd)

cd $HOME/dotfiles

gitRemain
if [ $? != 0 ]; then
	git status
	confirm "Commit and push these files?"
	if [ $? = 0 ]; then
		echo -n "Please input commit message : "
		read msg

		git add --all
		git commit -m "$msg"
		git push origin master
		#echo "This is your message : $msg"
	fi
else
	echo "No update."
fi

cd $BEFORE_DIR

