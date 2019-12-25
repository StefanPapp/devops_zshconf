# core zsh
export ZSH=~/.oh-my-zsh
ZSH_THEME="sobole"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
#DISABLE_AUTO_TITLE="true"
ZSH_THEME_TERM_TITLE_IDLE="%m: %~"
export EDITOR='vim'

# history
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
export HISTCONTROL=erasedups  # Ignore duplicate entries in history
export HISTSIZE=10000         # Increases size of history
export SAVEHIST=10000
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"
source "${HOME}/.oh-my-zsh/lib/history.zsh"
setopt inc_append_history
setopt share_history
setopt histappend        # Append history instead of overwriting

# plugins 
plugins=(per-directory-history git osx z vagrant docker sudo vi-mode fast-syntax-highlighting geeknote zsh-completions)
autoload -U compinit && compinit # init zsh-completion
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug s7anley/zsh-geeknote
zplug "b4b4r07/enhancd", use:init.sh
zplug load

source $ZSH/oh-my-zsh.sh

# specific configuration
source "${HOME}/zshconf/init_aliases.sh" # aliases
source "${HOME}/zshconf/init_devenv.sh" # dev env such as java and scala
source "${HOME}/zshconf/init_macosenv.sh" # mac os specific
source "${HOME}/zshconf/init_cloudenv.sh" # cloud environment
source "${HOME}/.scm_breeze/scm_breeze.sh"

eval $(thefuck --alias)

bindkey -s "\C-h" "\eqhh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt dotglob           # includes dotfiles in pathname expansion

