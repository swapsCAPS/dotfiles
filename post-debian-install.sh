dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:swapescape']"

sudo apt update
sudo apt --ignore-missing install \
  autoconf \
  automake \
  autotools-dev \
  bat \
  build-essential \
  cmake \
  curl \
  fd-find \
  g++ \
  gcc \
  git \
  git-flow \
  htop \
  libinput-tools \
  lynx \
  mc \
  neovim \
  ripgrep \
  ssh \
  tmux \
  tmuxinator \
  unzip \
  wget \
  wmctrl \
  xdotool \
  zsh

git config --global user.name "swapsCAPS"
git config --global user.email "verstegen.daan@gmail.com"

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

