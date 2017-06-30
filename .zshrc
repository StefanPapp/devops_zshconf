export ZSH=~/.oh-my-zsh
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git osx brew z vagrant docker)
source /usr/local/Cellar/z/1.9/etc/profile.d/z.sh

source $ZSH/oh-my-zsh.sh
#source etc/git-extra-completion.zsh
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias zshconfig="vim ~/.zshrc"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#VARS
export PATH="$HOME/.jenv/bin:$PATH"
export SPARK_HOME="/workspace/app/spark/spark-2.1.1"
export EDITOR='vim'
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home/"
export PATH=$JAVA_HOME/bin:$PATH
