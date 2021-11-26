[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux

export DOTFILES="$HOME/Dev/dotfiles"
export ZSH="/Users/linuss/Dev/dotfiles/.oh-my-zsh"

# ZSH_THEME="spaceship"
ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH=$(pyenv root)/shims:/opt/homebrew/bin:usr/local/bin:/usr/bin:/bin:$HOME/.local/bin:$PATH


export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# aliases
[[ -f $DOTFILES/.aliases ]] && source $DOTFILES/.aliases

# functions
[[ -f $DOTFILES/.functions ]] && source $DOTFILES/.functions



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="/Users/linuss/.sdkman"
[[ -s "/Users/linuss/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/linuss/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=$(/usr/libexec/java_home)

export EDITOR='nvim'

test -e "${DOTFILES}/.iterm2_shell_integration.zsh" && source "${DOTFILES}/.iterm2_shell_integration.zsh"

