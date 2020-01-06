export LC_ALL=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
export COMPOSER_DIR="$HOME/.composer"

export PATH="$COMPOSER_DIR/vendor/bin:$NVM_DIR/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Enable NVM
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# Enable direnv for bash
[ -x direnv ] && eval $(direnv hook bash)
