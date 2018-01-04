echo -n "Applying .zshenv..."

# LOCALES
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PATHS
export ANDROID_HOME=/Users/moritzkrog/Library/Android/sdk
export WORKON_HOME=~/Development/virtualenv
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/share/npm/bin/
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
export PATH=$PATH:/Users/moritzkrog/Development/scripts
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:$HOME/Library/Android/sdk/tools
export NVM_DIR=~/.nvm
export CLASSPATH=".:/usr/local/lib/java/antlr-4.7-complete.jar:$CLASSPATH"
export CLASSPATH=".:/usr/local/lib/java/antlr-3.5.2-complete.jar:$CLASSPATH"

# VARS
export EPO_USERNAME=mk89890

# Misc
export EDITOR="atom"

echo " done."
