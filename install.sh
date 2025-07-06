read -p "Symlink using -f (y/n)?" CONT
mkdir -p ~/.config
if [ "$CONT" = "y" ]; then
  ln -sf "$(pwd)/.aliases" ~/.aliases
  ln -sf "$(pwd)/.zshrc" ~/.zshrc
  ln -sf "$(pwd)/.editorconfig" ~/.editorconfig
  ln -sf "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  ln -sf "$(pwd)/mise.toml" ~/.config/.
else
  ln -s "$(pwd)/.aliases" ~/.aliases
  ln -s "$(pwd)/.zshrc" ~/.zshrc
  ln -s "$(pwd)/.editorconfig" ~/.editorconfig
  ln -s "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  ln -s "$(pwd)/mise.toml" ~/.config/.
fi
