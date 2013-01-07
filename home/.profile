PATH="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/mysql/bin:/opt/local/bin:$HOME/.cabal/bin:$HOME/Library/Haskell/bin:$HOME/bin:$PATH:/usr/local/Cellar/sbt/0.11.3-2/bin:/usr/local/share/python"
NODE_PATH="/usr/local/lib/node"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH
export EDITOR="vim"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

#golang
export GOPATH=$HOME/mygo
export PATH=$PATH:$HOME/mygo/bin
