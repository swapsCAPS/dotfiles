read -p "Symlink using -f (y/n)?" CONT
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/sway
if [ "$CONT" = "y" ]; then
  ln -sf "$(pwd)/swayConf" ~/.config/sway/config
  ln -sf "$(pwd)/alacritty.yml" ~/.config/alacritty/alacritty.yml
  ln -sf "$(pwd)/.aliases" ~/.aliases
  ln -sf "$(pwd)/.zshrc" ~/.zshrc
  ln -sf "$(pwd)/.editorconfig" ~/.editorconfig
  ln -sf "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  ln -sf "$(pwd)/.tern-project" ~/.tern-project
  ln -sf "$(pwd)/libinput-gestures.conf" ~/.config/libinput-gestures.conf
  ln -sf "$(pwd)/redshift.conf" ~/.config/redshift.conf
else
  ln -s "$(pwd)/swayConf" ~/.config/sway/config
  ln -s "$(pwd)/alacritty.yml" ~/.config/alacritty/alacritty.yml
  ln -s "$(pwd)/." ~/.config/sway/config
  ln -s "$(pwd)/.aliases" ~/.aliases
  ln -s "$(pwd)/.zshrc" ~/.zshrc
  ln -s "$(pwd)/.editorconfig" ~/.editorconfig
  ln -s "$(pwd)/.eslintrc.js" ~/.eslintrc.js
  ln -s "$(pwd)/.tern-project" ~/.tern-project
  ln -s "$(pwd)/libinput-gestures.conf" ~/.config/libinput-gestures.conf
  ln -s "$(pwd)/redshift.conf" ~/.config/redshift.conf
fi
