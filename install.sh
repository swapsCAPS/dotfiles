read -p "Symlink using -f (y/n)?" CONT
mkdir -p ~/.config
if [ "$CONT" = "y" ]; then
  ln -sf "$(pwd)/.aliases" ~/.aliases
  ln -sf "$(pwd)/.zshrc" ~/.zshrc
  ln -sf "$(pwd)/.editorconfig" ~/.editorconfig
  ln -sf "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  rm -rf ~/.config/karabiner
  ln -sf "$(pwd)/.config/karabiner" ~/.config/.
  rm -rf ~/.config/mise
  ln -sf "$(pwd)/.config/mise" ~/.config/.
  ln -sf "$(pwd)/.config/starship.toml" ~/.config/.
else
  ln -s "$(pwd)/.aliases" ~/.aliases
  ln -s "$(pwd)/.zshrc" ~/.zshrc
  ln -s "$(pwd)/.editorconfig" ~/.editorconfig
  ln -s "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  rm -rf ~/.config/karabiner
  ln -s "$(pwd)/.config/karabiner" ~/.config/.
  rm -rf ~/.config/mise
  ln -s "$(pwd)/.config/mise" ~/.config/.
  ln -s "$(pwd)/.config/starship.toml" ~/.config/.
fi
