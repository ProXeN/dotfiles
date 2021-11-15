#
# ~/.zshrc
#

USE_POWERLINE="true"

if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
	  source /usr/share/zsh/manjaro-zsh-config
fi

if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
	  source /usr/share/zsh/manjaro-zsh-prompt
fi

source ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

clear && neofetch