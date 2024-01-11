mkdir ~/src
cd ~/src

git config --global user.email "verstegen.daan@gmail.com"
git config --global user.name "swapsCAPS"

git clone git@github.com:swapsCAPS/dotfiles
git clone git@github.com:swapsCAPS/teh-awesome-tmux-setup
git clone git@github.com:swapsCAPS/teh-awesome-vim-setup
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

cd ~/src/dotfiles
ln -sf "$(pwd)/.aliases" ~/.aliases
ln -sf "$(pwd)/.zshrc" ~/.zshrc
ln -sf "$(pwd)/.editorconfig" ~/.editorconfig

echo "Download kubectl here:\nhttps://kubernetes.io/docs/tasks/tools/"
mkdir -p ~/Downloads
cd ~/Downloads
