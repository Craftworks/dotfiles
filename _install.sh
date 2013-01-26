#!/bin/sh

BACKUPDIR=$HOME/.dotfiles-bak
TARGET=$1

cd $(dirname $0)
CURDIR=$(pwd)

if [ ! -d $BACKUPDIR ]; then
    set -x
	mkdir $BACKUPDIR
    set +x
fi

if [ \( ! -L $HOME/$TARGET \) -a -e $HOME/$TARGET ]; then
    set -x
	mv $HOME/$TARGET $BACKUPDIR/
    set +x
fi

set -x
ln -fs $CURDIR/$TARGET $HOME/

