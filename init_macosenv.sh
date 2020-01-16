export PATH="/Users/stefanpapp/Library/Python/3.7/bin:/usr/local/opt/openssl/bin:$PATH"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


 #iterm (macos)
 function title {
     echo -ne "\033]0;"$*"\007"
 }

# Mac Helpers
alias show_hidden="defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder"
alias hide_hidden="defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder"

alias alfheim='ssh sp@alfheim'
alias vanaheim='ssh sp@vanaheim'
alias svartalfheim='ssh sp@svartalfheim'
alias sah='ssh stefanpapp@svartalfheim'
