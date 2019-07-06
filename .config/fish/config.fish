set -x NVM_DIR ~/.nvm
nvm use default --silent

set -x RVM_DIR ~/.rvm
rvm default > /dev/null 2>&1
