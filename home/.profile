PATH="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/local/mysql/bin:/opt/local/bin:$HOME/.cabal/bin:$HOME/Library/Haskell/bin:$HOME/bin:/usr/local/Cellar/sbt/0.12.2/bin:/usr/local/share/python:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export EDITOR="vim"
export PSQL_EDITOR="vim"
export PAGER=less

# mysql2 gem install hack
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

#golang
export GOPATH=$HOME/mygo
export PATH=$PATH:$HOME/mygo/bin

#node.js
NODE_PATH="/usr/local/lib/node"
export PATH=/usr/local/share/npm/bin:$PATH
