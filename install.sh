function link_dotfiles {
  echo "Linking dotfiles"
  ln -s $(pwd)/.zshrc ~/.zshrc
  ln -s $(pwd)/.tmux.conf ~/.tmux.conf
  ln -s $(pwd)/.ideavimrc ~/.ideavimrc
  ln -s $(pwd)/.gitconfig ~/.gitconfig
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
