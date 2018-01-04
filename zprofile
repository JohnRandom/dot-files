echo -n "Applying .zprofile..."

# Python aliases
alias rmpyc="find . -name '*.pyc' -exec rm {} \;"

# git shortcuts
alias gs="git status"
alias gco="git checkout"
alias gc="git commit"
alias gca="git commit -a"
alias gl="git log"
alias gh="git log --oneline"
alias gha="git log --pretty=format:\"%C(yellow)%h %C(cyan)%an%C(reset) %s\""
alias gt="git log --pretty=format:\"%h%x09%an%x09%ad%x09%s\" --author=\"Moritz Krog\""
alias gitauthor="git log --format='%aN' | sort -u"
alias gitrelease="git co master && git push --tags && git push && git co develop && git push"
alias git-cleanup="git branch --merged | grep -v \"\\*\" | grep -v \"master\" | grep -v \"develop\" | xargs -n 1 git branch -d"
alias git-remote-cleanup="git branch -r --merged | grep  -v -E '\*|master|develop' | grep origin | sed 's/origin\///' | xargs -n 1 git push --delete origin"

# ruby/rails
alias be="bundle exec"
alias br="bundle exec rake"
alias rakemc="be rake db:migrate && be rake db:test:clone"

# bash aliases
alias la="ls -la"
alias ll="ls -ll"
alias hig="history | grep"
alias gateway="netstat -nr | grep '^default'"

# node.js
export NODE_PATH=/usr/local/lib/node

# postgres
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# redis
alias redis.start="redis-server /usr/local/etc/redis.conf"

# MountPoints
alias mount.private="hdiutil attach /Users/moritzkrog/Private.dmg -stdinpass"

# utilities
alias reset-camera="sudo killall VDCAssistant && sudo killall AppleCameraAssistant"

# Initialise NVM
source $(brew --prefix nvm)/nvm.sh

# Java
alias antlr4='java -Xmx500M -cp "/usr/local/lib/java/antlr-4.7-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias antlr3='java -cp "/usr/local/lib/java/antlr-3.5.2-complete.jar:$CLASSPATH" org.antlr.Tool'
alias grun='java org.antlr.v4.gui.TestRig'

echo " done."
