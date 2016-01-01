
export PIP_REQUIRE_VIRTUALENV=true
#export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip(){
    PIP_REQUIRE_VIRTUALENV="" pip2.7 "$@"
}
syspip3(){
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

syspip_upgrade_all(){
    deactivate
    export PIP_REQUIRE_VIRTUALENV=''
    pip freeze --local | grep -v ^-e | cut -d = -f 1  | xargs -n1 pip install -U
    export PIP_REQUIRE_VIRTUALENV=true
}

#export PATH="$HOME/bin:$PATH";
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin/

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

export PYENV_ROOT=/python
export PATH="${PYENV_ROOT}/bin:$PATH"
if which pyenv > /dev/null; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi