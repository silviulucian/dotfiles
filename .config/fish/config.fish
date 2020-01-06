set -gx LC_ALL en_US.UTF-8
set -gx NVM_DIR $HOME/.nvm
set -gx COMPOSER_DIR $HOME/.composer

set -U fish_user_paths $COMPOSER_DIR/vendor/bin $NVM_DIR/bin $HOME/.yarn/bin $HOME/.config/yarn/global/node_modules/.bin $fish_user_paths

nvm use default --silent

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
