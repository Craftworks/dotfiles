#!/bin/sh

BACKUPDIR=$HOME/.dotfiles-bak
TARGET=$1

cd $(dirname $0)
CURDIR=$(pwd)

if [ ! -d $BACKUPDIR ]; then
	echo "Backup directory is not found '$BACKUPDIR'" 1>&2
	exit 1
fi

if [ -e $HOME/$TARGET ]; then
	if [ -L $HOME/$TARGET ]; then
        set -x
		rm $HOME/$TARGET
        set +x
	else
        set -x
		mv $HOME/$TARGET $HOME/$TARGET.bak
        set +x
	fi
fi

if [ -e $BACKUPDIR/$TARGET ]; then
    set -x
	mv $BACKUPDIR/$TARGET $HOME/
    set +x
fi

