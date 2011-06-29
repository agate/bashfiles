#!/bin/bash

ORIG_DIR=$(cd $(dirname $0); pwd)
BASH_DIR=$HOME/.bash
OTHER_DIR=$BASH_DIR/otherrc

ln -f -i -s $ORIG_DIR $BASH_DIR
ln -f -i -s $BASH_DIR/bashrc $HOME/.bashrc

for file in `ls $OTHER_DIR`; do
  ln -f -i -s $OTHER_DIR/$file $HOME/.$file
done
