# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux

export DOTFILES="$HOME/Dev/dotfiles"
export ZSH="/Users/linuss/Dev/dotfiles/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH=/opt/homebrew/bin:usr/local/bin:/usr/bin:/bin:$HOME/.local/bin:$HOME/Dev/tools/flutter/bin:$PATH

# aliases
[[ -f $DOTFILES/.aliases ]] && source $DOTFILES/.aliases

# functions
#[[ -f $DOTFILES/.functions ]] && source $DOTFILES/.functions

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR="/Users/linuss/.sdkman"
[[ -s "/Users/linuss/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/linuss/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME=$(/usr/libexec/java_home)

export EDITOR='nvim'

test -e "${DOTFILES}/.iterm2_shell_integration.zsh" && source "${DOTFILES}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ---------------------- FZF -------------------------------
# Key bindings
bindkey -s '^e' 'v $(fzf)\n'
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLOVEL9K_INSTANT_PROMPT=quiet
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias ssh-erp="ssh -i ~/.ssh/datatp_key -p 30231 datatp@datatp.cloud"

# Linking to OpenSSL
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export CFLAGS="-Wno-error=implicit-function-declaration"

# pnpm
export PNPM_HOME="/Users/linuss/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PYTHON=python2
# pnpm end
export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"
