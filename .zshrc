
# core zsh
export ZSH=~/.oh-my-zsh

ZSH_THEME="sobole"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
DISABLE_AUTO_TITLE="true"


export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

plugins=(git osx z vagrant docker sudo vi-mode fast-syntax-highlighting geeknote zsh-completions)
source $ZSH/oh-my-zsh.sh

# autoload -U compinit && compinit
# antigen bundle s7anley/zsh-geeknote

source .localsettings
source .aliases
source .development

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
[ -s "/Users/stefanpapp/.scm_breeze/scm_breeze.sh" ] && source "/Users/stefanpapp/.scm_breeze/scm_breeze.sh"

export EDITOR='vim'

# Java
# export PATH=$JAVA_HOME/bin:$PATH

# Python
export PATH=/usr/local/bin:$PATH

eval $(thefuck --alias)
export PATH=/usr/local/sbin:$PATH

export PATH="/Users/stefanpapp/Library/Python/7.7/bin:/usr/local/opt/openssl/bin:$PATH"
export PATH="$PATH:/workspace/bin/apache/hadoop/current/bin"
export PATH="$HOME/.jenv/bin:$PATH"
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
# bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)
bindkey -s "\C-h" "\eqhh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
alias nt="kafka-topics.sh --create  --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic $1"

eval "$(jenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stefanpapp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stefanpapp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stefanpapp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stefanpapp/google-cloud-sdk/completion.zsh.inc'; fi

screen -R -D
