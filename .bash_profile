# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.

for file in ~/.{aliases,autocomplete,bash_prompt,exports,extra,path}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# NVM
export NVM_DIR="$HOME/.nvm"
[ "$BASH_VERSION" ] && npm() {
    # hack: avoid slow npm sanity check in nvm
    if [ "$*" == "config get prefix" ]; then which node | sed "s/bin\/node//";
    else $(which npm) "$@"; fi
}
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
rvm_silence_path_mismatch_check_flag=1 # prevent rvm complaints that nvm is first in PATH
unset npm # end hack

source $HOME/.nvm/nvm.sh

# From the original Cloud9 `.bashrc` file:
# User specific aliases and functions
alias python=python27

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"