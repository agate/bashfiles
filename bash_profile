if [[ -f "$HOME/.bashrc" ]]; then
  . "$HOME/.bashrc"
fi

# This loads RVM into a shell session.
if [[ -s "$HOME/.rvm" ]]; then
  PATH="$HOME/.rvm/bin:$PATH"
  source "$HOME/.rvm/scripts/rvm"
fi
