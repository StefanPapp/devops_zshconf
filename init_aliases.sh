# package management (mac/linux)
alias bu='brew update && brew upgrade || brew upgrade $(brew list --cask) || brew cleanup; brew doctor'
alias bu2='brew update; brew upgrade; brew cu -ay; brew cleanup;'

alias pu='pip3 install --upgrade `pip3 list --outdated | awk 'NR>2 {print $1}'`'
alias brewski='bu'
alias zu='cd ~/.oh-my-zsh && git pull && cd ~/.zsh && git pull origin master && git commit -a -S && git push origin master'
alias lu='sudo apt update $$ sudo apt upgrade'

# config
alias tcfg='vim ~/tmux.conf'
alias zcfg="vim ~/.zshrc"
alias acfg='vim ~/.zsh/init_aliases.sh $$ source ~/.zsh/init_aliases.sh'
alias vcfg="vim ~/.vimrc"

# one chars
alias t='dtrx'
alias k='kubectl'
alias e='exa -al'
alias s='speedtest'
alias v='vim'

# docker
alias dcb='docker compose build'
alias dcs='docker compose stop'
alias dls='docker ps -A'
alias dcu='docker compose up'

# kubernetes
alias kgp='kubectl get po'
alias kdp='kubectl describe po'

# git
alias format='git log --pretty=format:"%h - %an, %ar : %s"'
alias gpom='git push origin master'

clone_from_github(){
git clone http://github.com/StefanPapp/$1
}
alias gsp='clone_from_github'
alias gbranch='git checkout master && git pull && git checkout -b'
alias gca='git add . && git commit -S'
alias gdc='git diff --cached'
alias gdfhist='git log --pretty=format:"[%h] %ae, %ar: %s" --stat'
alias gdfmaster='git fetch origin && git diff --name-only origin/master'
alias gdmaster='git fetch origin && git diff origin/master'
alias gdt='git difftool'
alias gdtc='git difftool --cached'
alias get_pulls='git config --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pull/*"'
alias gfo='git fetch origin'
alias gitb='git branch'
alias gitc='git commit -S'
alias gitgraph='git log --pretty=oneline --graph'
alias gitl='git log -1 HEAD'
alias gits='git status'
alias gl='git log --pretty=format:"%h - %an - %ar - %s" -20'
alias glsign='git log --pretty=format:"%h - %an - %ar - %s" -20 --show-signature'
alias gpush='git commit -S && git push origin master'
alias grebc='git rebase --continue'
alias grebi='git rebase -i master'
alias gsta='git stash apply'

# core
alias sdu='sudo du --max-depth=3 -hx '
alias sctl='systemctl'
alias howbig='du -hc | tail -n 1'
alias less='less -M'
alias mkdir='mkdir -p -v'
alias mv='mv -iv'
alias purewheel='sudo python setup.py bdist_wheel'
alias ft='grep -rnw . -e'
alias agf='ag -g'
alias fullpath='ls -d -1 $PWD/*.*'

# vagrant
alias vdestroy='vagrant destroy'
alias vhalt='vagrant halt'
alias vprov='vagrant provision'
alias vprune='vagrant global-status --prune'
alias vreboot='vagrant halt && vagrant up'
alias vreboothard='vagrant destroy && vagrant up'
alias vreload='vagrant reload'
alias vresume='vagrant resume'
alias vrsync='vagrant rsync-auto'
alias vssh='vagrant ssh'
alias vstatus='vagrant global-status'
alias vsuspend='vagrant suspend'
alias vup='vagrant up'

