export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export TERM=xterm-256color
export EDITOR=vim
export JRUBY_NG=true

# rcs
for file in `ls $HOME/.bash/rc`; do
  source $HOME/.bash/rc/$file
done

# OS-based setting
if [ -f $HOME/.bash/rc.os/`uname -s` ]; then
  source $HOME/.bash/rc.os/`uname -s`
fi

# completions
for file in `ls $HOME/.bash/completion.d`; do
  source $HOME/.bash/completion.d/$file
done

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;35m\]$(git_branch)\[\033[00m\]\[\033[01;33m\]\$\[\033[00m\] '
