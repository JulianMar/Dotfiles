# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

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

# add Go bin to path
PATH+=:$GOROOT/bin

# GVM Config
[[ -s "/home/julian/.gvm/scripts/gvm" ]] && source "/home/julian/.gvm/scripts/gvm"
gvm use go1.11.2 > /dev/null

# add alias
source $HOME/.aliasrc

# add functions
source $HOME/.functionsrc

# add env
source $HOME/.envrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/julian/google-cloud-sdk/path.zsh.inc' ]; then . '/home/julian/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/julian/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/julian/google-cloud-sdk/completion.zsh.inc'; fi
