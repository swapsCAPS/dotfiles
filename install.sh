read -p "Symlink using -f (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  ln -sf "$(pwd)/.aliases" ~/.aliases
  ln -sf "$(pwd)/.zshrc" ~/.zshrc
  ln -sf "$(pwd)/.editorconfig" ~/.editorconfig
  ln -sf "$(pwd)/.tern-project" ~/.tern-project
  ln -sf "$(pwd)/libinput-gestures.conf" ~/.config/libinput-gestures.conf
  ln -sf "$(pwd)/redshift.conf" ~/.config/redshift.conf
else
  ln -s "$(pwd)/.aliases" ~/.aliases
  ln -s "$(pwd)/.zshrc" ~/.zshrc
  ln -s "$(pwd)/.editorconfig" ~/.editorconfig
  ln -s "$(pwd)/.tern-project" ~/.tern-project
  ln -s "$(pwd)/libinput-gestures.conf" ~/.config/libinput-gestures.conf
  ln -s "$(pwd)/redshift.conf" ~/.config/redshift.conf
fi
