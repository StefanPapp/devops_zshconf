# core zsh
ZSH_THEME="sobole"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
DISABLE_AUTO_TITLE="true"

export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
export HISTCONTROL=erasedups  # Ignore duplicate entries in history
export HISTSIZE=10000         # Increases size of history
export SAVEHIST=10000
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"
source /Users/stefanpapp/.oh-my-zsh/lib/history.zsh

export ZSH=~/.oh-my-zsh
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

plugins=(per-directory-history git osx z vagrant docker sudo vi-mode fast-syntax-highlighting geeknote zsh-completions)
source $ZSH/oh-my-zsh.sh

source "${HOME}/antigen.zsh"
autoload -U compinit && compinit
antigen bundle s7anley/zsh-geeknote

source "${HOME}/.aliases"
source "${HOME}/.development"
source "${HOME}/.macos" # special environment

[ -s "${HOME}/.scm_breeze/scm_breeze.sh" ] && source "${HOME}/.scm_breeze/scm_breeze.sh"
eval $(thefuck --alias)
export EDITOR='vim'



bindkey -s "\C-h" "\eqhh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/stefanpapp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/stefanpapp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/stefanpapp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/stefanpapp/google-cloud-sdk/completion.zsh.inc'; fi

setopt inc_append_history
setopt share_history
# screen -R -D
# source ~/enhancd/init.sh

  SHOPT=`which shopt`
  if [ -z SHOPT ]; then
      shopt -s histappend        # Append history instead of overwriting
      shopt -s cdspell           # Correct minor spelling errors in cd command
      shopt -s dotglob           # includes dotfiles in pathname expansion
      shopt -s checkwinsize      # If window size changes, redraw contents
      shopt -s cmdhist           # Multiline commands are a single command in history.
      shopt -s extglob           # Allows basic regexps in bash.
  fi
