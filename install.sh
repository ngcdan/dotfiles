function link_dotfiles {
  echo "Link dotfiles updating.......... "
  ln -sf $(pwd)/.zshrc ~/.zshrc
  ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
  ln -sf $(pwd)/.ideavimrc ~/.ideavimrc
  ln -sf $(pwd)/.vimrc ~/.vimrc
  ln -sf $(pwd)/.gitconfig ~/.gitconfig
  ln -sf $(pwd)/nvim ~/.config/nvim
  ln -sf ~/Library/Application\ Support/Code/User/keybindings.json ./keybindings.json
  ln -sf ~/Library/Application\ Support/Code/User/settings.json ./settings.json
  echo "Link dotfiles done!"
}
link_dotfiles;

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

