 #!/bin/sh

# zsh
git clone https://github.com/rupa/z ~

cd
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
export ZSH_CUSTOM=~/.oh-my-zsh/custom

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
git clone https://github.com/zdharma/fast-syntax-highlighting.git $ZSH_CUSTOM/plugins/fast-syntax-highlighting
git clone git://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# other
curl -s "https://get.sdkman.io" | bash
curl -s  https://api.github.com/repos/sharkdp/bat/releases/latest |grep browser_download_url |  cut -d '"' -f 4 | grep 'amd64.deb' | grep -v musl | wget -i -
sudo dpkg -i bat_*_amd64.deb

rm ~/.zshrc
ln -s ~/devops_zshconf/.zshrc ~/.zshrc
