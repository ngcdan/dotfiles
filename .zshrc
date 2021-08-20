[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/opt/homebrew/bin/zsh:$PATH
export PATH=/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/linuss/.oh-my-zsh"

# CASE_SENSITIVE="true"

plugins=(git zsh-autosuggestions)

# plugin 
# bindkey '       ' autosuggest-accept
# bindkey '^I' autosuggest-accept

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

source /Users/linuss/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

fpath=($fpath "/Users/linuss/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/linuss/.sdkman"
[[ -s "/Users/linuss/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/linuss/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export JAVA_HOME=$(/usr/libexec/java_home)
