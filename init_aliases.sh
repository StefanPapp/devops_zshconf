# todo get all aliases here
alias ali='vim ~/devops_zshconf/init_aliases.sh'

# vms
alias ft='grep -rnw . -e'

# custom servers
alias asgard='ssh sp@asgard'
alias helheim='ssh stefan@helheim'

# maconly
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

# linux distro only
alias syum='sudo yum'
alias sctl='systemctl'
alias au='sudo apt update'
alias aug='sudo apt upgrade'
alias ai='sudo apt install'

#tmux
alias abig='tmux attach -t big'
alias attach='tmux attach -t'
alias asmall='tmux attach -t small'

# docker
alias dbuild='docker-compose build'
alias ddebug='docker-compose run --service-ports web'
alias dhalt='docker-compose stop'
alias dps='docker-compose ps'
alias dpshell='docker-compose run web ./manage.py shell -i bpython'
alias drebuild='docker-compose build --no-cache'
alias drun='docker-compose run web'
alias drunw='docker-compose run watch'
alias dshell='docker-compose run web bash'
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
alias gad='git add'
alias gamend='git commit -S --amend'
alias gapush='git commit -S -a && git push origin master'
alias gash='git stash'
alias gbranch='git checkout master && git pull && git checkout -b'
alias gca='git add . && git commit -S'
alias gch='git checkout'
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
alias gitd='git branch -D'
alias gitgraph='git log --pretty=oneline --graph'
alias gitl='git log -1 HEAD'
alias gits='git status'
alias gl='git log --pretty=format:"%h - %an - %ar - %s" -20'
alias glsign='git log --pretty=format:"%h - %an - %ar - %s" -20 --show-signature'
alias gpgfing='gpg --fingerprint'
alias gpglist='gpg --list-keys'
alias gpgrefresh='gpg --refresh-keys --keyserver hkp://pool.sks-keyservers.net'
alias gpgupload='gpg --send-keys --keyserver hkps://pool.sks-keyservers.net'
alias gpush='git commit -S && git push origin master'
alias grebc='git rebase --continue'
alias grebi='git rebase -i master'
alias grepn='grep -n --color=auto'
alias gsta='git stash apply'

# aws
alias s3down='aws s3 sync'
alias shellsync='cd ~/devops_zshconf && git pull origin master && git commit -a -S && git push origin master'
alias shutdown='sudo shutdown -P now'
alias so='unalias -m '\''*'\'' && source ~/.zshrc'

# tmux
alias tms='tmux list-sessions'
alias tmuxconfig='nvim ~/dotfiles/tmux/tmux.conf'

# linux
alias top=htop
alias untar='tar -xvf'

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

# other
alias howbig='du -hc | tail -n 1'
alias ls='ls -alihF'
alias la='ls -alhF'
alias less='less -M'
alias mkdir='mkdir -p -v'
alias mv='mv -iv'
alias purewheel='sudo python setup.py bdist_wheel'

alias which-command=whence
alias def=sdcv
alias agf='ag -g'
