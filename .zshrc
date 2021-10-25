[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

export PATH=$(pyenv root)/shims:/opt/homebrew/bin:usr/local/bin:/usr/bin:/bin:$HOME/.local/bin:$PATH

source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# aliases
[[ -f ~/dotfiles/.aliases ]] && source ~/dotfiles/.aliases

# functions
[[ -f ~/dotfiles/.functions ]] && source ~/dotfiles/.functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="/Users/linuss/.sdkman"
[[ -s "/Users/linuss/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/linuss/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=$(/usr/libexec/java_home)

export EDITOR='nvim'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

