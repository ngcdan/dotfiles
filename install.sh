function link_dotfiles {
  echo "Linking dotfiles"
  ln -sf $(pwd)/.zshrc ~/.zshrc
  ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
  ln -sf $(pwd)/.ideavimrc ~/.ideavimrc
  ln -sf $(pwd)/.gitconfig ~/.gitconfig
  ln -sf $(pwd)/.vimrc ~/.vimrc
  ln -sf $(pwd)/.yabairc ~/.yabairc
  ln -sf $(pwd)/.skhdrc ~/.skhdrc
}

while true ; do 
	echo "Choise 1 2 or 3"
	echo "1: Link dotfiles"
	echo "2: Install"
	echo "3: Quit"
	read -sn1
	case "$REPLY" in 
		1) link_dotfiles;;
		3) exit 0;;
	esac
	read -n1 -p "Press any key"
done

# MacOS comes with Python pre-installed. But it's Python Version 2.7, which is now deprecated
# Install pyenv to Manage Your Python Versions
# https://github.com/pyenv/pyenv
# https://www.freecodecamp.org/news/python-version-on-mac-update/
# brew install pyenv
# pyenv install 3.10.0
# pyenv global 3.10.0


# install Oh My Zsh 
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Install zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# nano ~/.zshrc
# plugins=(git zsh-autosuggestions)
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# clone
# git clone https://github.com/powerline/fonts.git --depth=1
# install
# cd fonts
# ./install.sh
# clean-up a bit
# cd ..
# rm -rf fonts




# FD 
# https://github.com/sharkdp/fd
# brew install fd 


# FZF.
# brew install fzf
# To install useful key bindings and fuzzy completion:
# $(brew --prefix)/opt/fzf/install




#  Nerd Font 
# https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack
