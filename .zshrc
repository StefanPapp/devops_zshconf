export ZSH=~/.oh-my-zsh

ZSH_THEME="sobole"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git osx z vagrant docker sudo vi-mode)

source $ZSH/oh-my-zsh.sh
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source .localsettings
#source etc/git-extra-completion.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
DISABLE_AUTO_TITLE="true"

# Spark
export PATH=/workspace/bin/apache/spark/current/bin:$PATH
export PYSPARK_PYTHON=python3

# Java
export EDITOR='vim'
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/"
export PATH=$JAVA_HOME/bin:$PATH
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

eval $(thefuck --alias)
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Users/stefanpapp/.local/share/certificates

[ -s "/Users/stefanpapp/.scm_breeze/scm_breeze.sh" ] && source "/Users/stefanpapp/.scm_breeze/scm_breeze.sh"
export PATH="/usr/local/opt/openssl/bin:$PATH"

#alias
alias ls='ls -alihF'
alias sparoo='cd $SPARK_HOME'
alias kafroo='cd $KAFKA_HOME'
alias zshconfig="vim ~/.zshrc"
alias qn="geeknote create --title 'quick entry' --content $1"

man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

export PATH="/usr/local/sbin:$PATH"

# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

