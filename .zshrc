# core zsh
export ZSH=~/.oh-my-zsh
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
#DISABLE_AUTO_TITLE="true"
ZSH_THEME_TERM_TITLE_IDLE="%m: %~"
export EDITOR='vim'

# theme
# ZSH_THEME="sobole"  # more decent
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="awesome-patched"


# history
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
export HISTCONTROL=erasedups  # Ignore duplicate entries in history
export HISTSIZE=10000         # Increases size of history
export SAVEHIST=10000
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"
setopt histappend        # Append history instead of overwriting
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances of the shell


# plugins 
plugins=(per-directory-history git osx z vagrant docker sudo vi-mode fast-syntax-highlighting geeknote zsh-completions)
autoload -U compinit && compinit # init zsh-completion

[ -s "/usr/share/zplug" ] && export ZPLUG_HOME=/usr/share/zlug
[ -s "/usr/local/opt/zplug" ] && export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug s7anley/zsh-geeknote
zplug "b4b4r07/enhancd", use:init.sh
zplug zsh-users/zsh-history-substring-search
zplug load

# specific configuration
source "${HOME}/devops_zshconf/init_aliases.sh" # aliases
source "${HOME}/devops_zshconf/init_devenv.sh" # dev env such as java and scala
source "${HOME}/devops_zshconf/init_macosenv.sh" # mac os specific
source "${HOME}/devops_zshconf/init_cloudenv.sh" # cloud environment
source "${HOME}/.scm_breeze/scm_breeze.sh"

eval $(thefuck --alias)

bindkey -s "\C-h" "\eqhh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt dotglob           # includes dotfiles in pathname expansion
setopt auto_cd # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

source $ZSH/oh-my-zsh.sh

[ -s "/home/sp/.scm_breeze/scm_breeze.sh" ] && source "/home/sp/.scm_breeze/scm_breeze.sh"
