[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux

export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$HOME/.local/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Path to your oh-my-zsh installation.
export ZSH="/Users/linuss/.oh-my-zsh"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source /Users/linuss/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# plugin
# bindkey '       ' autosuggest-accept
# bindkey '^I' autosuggest-accept

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# functions
[[ -f ~/.functions ]] && source ~/.functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fpath=($fpath "/Users/linuss/.zfunctions")

# Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

export SDKMAN_DIR="/Users/linuss/.sdkman"
[[ -s "/Users/linuss/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/linuss/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=$(/usr/libexec/java_home)

export EDITOR='nvim'

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
