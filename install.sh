read -p "Symlink using -f (y/n)?" CONT
mkdir -p ~/.config

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

if [ "$CONT" = "y" ]; then
  ln -sf "$(pwd)/.aliases" ~/.aliases
  ln -sf "$(pwd)/.zshrc" ~/.zshrc
  ln -sf "$(pwd)/.editorconfig" ~/.editorconfig
  ln -sf "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  rm -rf ~/.config/mise
  ln -sf "$(pwd)/.config/mise" ~/.config/.
  ln -sf "$(pwd)/.config/starship.toml" ~/.config/.
else
  ln -s "$(pwd)/.aliases" ~/.aliases
  ln -s "$(pwd)/.zshrc" ~/.zshrc
  ln -s "$(pwd)/.editorconfig" ~/.editorconfig
  ln -s "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  rm -rf ~/.config/mise
  ln -s "$(pwd)/.config/mise" ~/.config/.
  ln -s "$(pwd)/.config/starship.toml" ~/.config/.
fi
