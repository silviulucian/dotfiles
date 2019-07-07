# Set locale
export LC_ALL=en_US.UTF-8

# Enable direnv for bash
[ -x direnv ] && eval $(direnv hook bash)

# NVM and Yarn
export NVM_DIR="$HOME/.nvm"
export PATH="$NVM_DIR/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash ] && . /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/sls.bash ] && . /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/slss.bash ] && . /Users/silviulucian/.config/yarn/global/node_modules/tabtab/.completions/slss.bash
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Added by rvm
export RVM_DIR="$HOME/.rvm"
export PATH="$RVM_DIR/bin:$PATH"
[[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm"
