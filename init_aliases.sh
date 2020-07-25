# todo get all aliases here
alias ali='vim ~/devops_zshconf/init_aliases.sh'

# maconly
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# linux distro only
alias syum='sudo yum'
alias sctl='systemctl'
alias au='sudo apt update'
alias aug='sudo apt upgrade'
alias ai='sudo apt install'

#tmux
alias attach='tmux attach -t'
alias tms='tmux list-sessions'
alias tmuxconfig='nvim ~/tmux.conf'

# docker
alias dbuild='docker-compose build'
alias dhalt='docker-compose stop'
alias dps='docker-compose ps'
alias dup='docker-compose up'

alias sdu='sudo du --max-depth=3 -hx '
alias zshconfig="vim ~/.zshrc"
alias qn="geeknote create --title 'quick entry' --content ("")"

# alias fd='fdfind'
alias fullpath='ls -d -1 $PWD/*.*'

#git
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

#kubernetes
alias k='kubectl'

# aws
alias shellsync='cd ~/devops_zshconf && git pull origin master && git commit -a -S && git push origin master'
alias shutdown='sudo shutdown -P now'

# linux
alias untar='tar -xvf'
alias howbig='du -hc | tail -n 1'
alias ls='ls -alihF'
alias la='ls -alhF'
alias less='less -M'
alias mkdir='mkdir -p -v'
alias mv='mv -iv'
alias purewheel='sudo python setup.py bdist_wheel'
alias agf='ag -g'
alias ft='grep -rnw . -e'

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
