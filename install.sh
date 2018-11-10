#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

use_i3=true

# Install zsh
sudo pacman -S --needed --noconfirm zsh git wget

if [[ ! -d ~/.config ]]; then mkdir ~/.config; fi

####################
# ZSH
####################

install_zsh () {
  # Test to see if Zsh is installed
  if [ -f /bin/zsh -o -f /usr/bin/zsh ]; then
    # Install Oh My Zsh if it isn't already present
    if [[ ! -d ~/.oh-my-zsh/ ]]; then
      sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi
    # Set the default shell to Zsh if it isn't currently set
    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
      sudo chsh -s $(which zsh)
    fi
  else
  	echo "Zsh not installed, skipping."
  fi
}

install_zsh

# Specify ZSH custom directory
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Install the ZSH spaceship theme if not already installed
if [[ ! -d $HOME/.oh-my-zsh/custom/themes/spaceship-prompt ]]; then
	git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
fi

# Install the ZSH syntax highlighting plugin if it's not already installed
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# Install the ZSH auto suggestion plugin if it's not already installed
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# Install the ZSH completions plugin if it's not already installed
if [[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ]]; then
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
fi

if [[ ! -d ~/.zsh ]]; then mkdir ~/.zsh; fi

# Symlink .zshrc
ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/zsh/zsh_aliases" ~/.zsh/

# Colorls
gem install rdoc
gem install colorls



####################
# install all needed packages
####################

sudo pacman -S --needed --noconfirm neovim python2-neovim python-neovim python-pip nodejs npm tmux ack fzf the_silver_searcher termite ranger htop playerctl ruby

####################
# .gitconfig and .gitignore_global
####################

ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~


####################
# NeoVim
####################

pip2 install --user neovim
pip install --user neovim

if [[ ! -f ~/.local/share/nvim/site/autoload/plug.vim ]]; then
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d ~/.config/nvim ]]; then mkdir ~/.config/nvim; fi
ln -sfv "$DOTFILES_DIR/.config/nvim/init.vim" ~/.config/nvim/

####################
# Tmux
####################

ln -sfv "$DOTFILES_DIR/.tmux.conf" ~

####################
# Termite
####################

if [[ ! -d ~/.config/termite ]]; then mkdir ~/.config/termite; fi
ln -sfv "$DOTFILES_DIR/.config/termite/config" ~/.config/termite/

####################
# Ranger
####################

if [[ ! -d ~/.config/ranger ]]; then mkdir ~/.config/ranger; fi
ln -sfv "$DOTFILES_DIR/.config/ranger/rc.conf" ~/.config/ranger/

####################
# i3
####################

if $use_i3 ; then
  sudo pacman -S --needed --noconfirm feh compton redshift rofi xorg-xprop
  sudo pip install i3ipc

  if [[ ! -d ~/.i3 ]]; then
    cp -r $DOTFILES_DIR/.i3 ~
  fi

  if [[ ! -d ~/.wallpapers ]]; then
    cp -r $DOTFILES_DIR/.wallpapers ~
  fi

  ln -sfv "$DOTFILES_DIR/.config/i3/config" ~/.config/i3/
  ln -sfv "$DOTFILES_DIR/.i3blocks.conf" ~

  ####################
  # Compton
  ####################

  ln -sfv "$DOTFILES_DIR/.config/compton.conf" ~/.config/

  ####################
  # Rofi
  ####################

  if [[ ! -d ~/.config/rofi ]]; then mkdir ~/.config/rofi; fi
  ln -sfv "$DOTFILES_DIR/.config/rofi/config" ~/.config/rofi/
  ln -sfv "$DOTFILES_DIR/.config/rofi/theme.rasi" ~/.config/rofi/
fi



####################
# X
####################

ln -sfv "$DOTFILES_DIR/.Xresources" ~
ln -sfv "$DOTFILES_DIR/.xbindkeysrc" ~
ln -sfv "$DOTFILES_DIR/.xinitrc" ~
