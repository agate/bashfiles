#!/bin/bash

BASH_DIR=$HOME/.bash
DOT_DIR=$BASH_DIR/dot

ln -f -i -s $BASH_DIR/bash_profile $HOME/.bash_profile
ln -f -i -s $BASH_DIR/bashrc $HOME/.bashrc

for file in `ls $DOT_DIR`; do
  ln -f -i -s $DOT_DIR/$file $HOME/.$file
done
