echo -n "Applying .zshenv..."

# LOCALES
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PATHS
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/share/npm/bin/
export PATH=$PATH:/Users/moritzkrog/Development/scripts
export PATH=$PATH:~/Development/Projects/bestselfy/kubectx
export PATH=$PATH:/Users/moritzkrog/.local/bin
# export CLASSPATH=".:/usr/local/lib/java/antlr-4.7-complete.jar:$CLASSPATH"
# export CLASSPATH=".:/usr/local/lib/java/antlr-3.5.2-complete.jar:$CLASSPATH"``

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/moritzkrog/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/moritzkrog/Development/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/moritzkrog/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/moritzkrog/Development/google-cloud-sdk/completion.zsh.inc'; fi

echo " done."
