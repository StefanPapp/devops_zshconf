# package management (mac/linux)
alias brewski='brew update && brew upgrade && brew upgrade $(brew list --cask) && brew cleanup; brew doctor'

# alias lu='sudo yum upgrade'
alias lupd='sudo apt update $$ sudo apt upgrade'
alias ladd='sudo apt install'

#tmux
alias tadd='tmux attach -t'
alias tlst='tmux list-sessions'
alias tcfg='vim ~/tmux.conf'

# docker
alias dbuild='docker-compose build'
alias dchalt='docker-compose stop'
alias dlst='docker ps -A'
alias dcup='docker-compose up'

# kubernetes
alias k='kubectl'
alias kpo='kubectl get po'
alias kdpo='kubectl describe po'

# speedtest
alias st='speedtest'

# git
alias format='git log --pretty=format:"%h - %an, %ar : %s"'
alias gpom='git push origin master'

clone_from_github(){
git clone http://github.com/StefanPapp/$1
}
alias gsp='clone_from_github'
alias gbranch='git checkout master && git pull && git checkout -b'
# alias fd='fdfind'
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
alias untar='tar -xvf'
alias howbig='du -hc | tail -n 1'
alias ls='ls -alihF'
alias la='ls -alhF'
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

# vim
alias vcfg='vim ~/.vim/vimrc'
# zsh
alias zupd='cd ~/.zsh && git pull origin master && git commit -a -S && git push origin master'
alias zcfga='vim ~/.zsh/init_aliases.sh'
alias zcfg="vim ~/.zshrc"

