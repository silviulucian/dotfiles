set -gx LC_ALL en_US.UTF-8
set -gx NVM_DIR $HOME/.nvm
set -gx RVM_DIR $HOME/.rvm

set -U fish_user_paths $NVM_DIR/bin $HOME/.yarn/bin $HOME/.config/yarn/global/node_modules/.bin $RVM_DIR/bin $fish_user_paths

nvm use default --silent
rvm default > /dev/null 2>&1


test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
