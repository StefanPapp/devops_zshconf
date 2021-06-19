if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# core zsh
export ZSH=~/.oh-my-zsh
export ZSHCONFDIR=~/.zsh
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
# removed per-directory-history
plugins=(kube-aliases zsh-vi-mode aws fzf git python pip tmux osx z vagrant docker sudo vi-mode fast-syntax-highlighting zsh-completions)
autoload -U compinit && compinit # init zsh-completion

autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws

[ -s "/usr/share/zplug" ] && export ZPLUG_HOME=/usr/share/zplug
[ -s "/usr/local/opt/zplug" ] && export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug b4b4r07/enhancd, use:init.sh
zplug zsh-users/zsh-history-substring-search
zplug load

# specific configuration
source "${ZSHCONFDIR}/init_aliases.sh" # aliases
source "${ZSHCONFDIR}/init_devenv.sh" # dev env such as java and scala
source "${ZSHCONFDIR}/init_macosenv.sh" # mac os specific
source "${HOME}/.scm_breeze/scm_breeze.sh"

eval $(thefuck --alias)

bindkey -s "\C-h" "\eqhh"
bindkey -v
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt dotglob     # includes dotfiles in pathname expansion
setopt auto_cd     # cd by typing directory name if it's not a command
setopt correct_all # autocorrect commands
setopt auto_list   # automatically list choices on ambiguous completion
setopt auto_menu   # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match

# pet:
function prev() {
      PREV=$(fc -lrn | head -n 1)
        sh -c "pet new `printf %q "$PREV"`"

}
function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
    CURSOR=$#BUFFER
      zle redisplay

}
zle -N pet-select
# stty -ixon
bindkey '^s' pet-select


source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source ~/.iterm2_shell_integration.zsh

[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/stefanpapp/.sdkman"
[[ -s "/Users/stefanpapp/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/stefanpapp/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/mpv-iina/bin:$PATH"
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export PATH="/usr/local/opt/curl/bin:$PATH"

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)

# capture the output of a command so it can be retrieved with ret
cap () { tee /tmp/capture.out}

# return the output of the most recent command that was captured by cap
ret () { cat /tmp/capture.out }

# usage
# $ find . -name 'filename' | cap
# $ret

export OH_MY_NEOVIM=/Users/stefanpapp/.oh-my-neovim
export OH_MY_NEOVIM_EXTENSIONS="default clang code_style git go gpg idea java jira json mouse neomake register snippet spell sublime themes tmux true_color yaml"

source /Users/stefanpapp/.oh-my-neovim/tools/functions.sh

PATH="/Users/stefanpapp/.gem/ruby/2.6.0/bin:$PATH"
PATH="/Users/stefanpapp/.node_modules_global/bin:$PATH"
