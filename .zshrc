# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(
  git,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add bin to path
PATH+=:$HOME/bin

# GVM Config
[[ -s "/home/julian/.gvm/scripts/gvm" ]] && source "/home/julian/.gvm/scripts/gvm"
gvm use go1.11.2 > /dev/null

# add alias
source $HOME/.aliasrc

# add functions
source $HOME/.functionsrc


