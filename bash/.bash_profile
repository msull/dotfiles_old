
export PIP_REQUIRE_VIRTUALENV=true
#export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
mkvirt(){
    if [ ! -z $1 ]; then
        pyenv virtualenv $1 ${PWD##*/} && pyenv local ${PWD##*/}
    else
        pyenv virtualenv ${PWD##*/} && pyenv local ${PWD##*/}
    fi
}
syspip(){
	if [ ! -z ${VIRTUAL_ENV} ]; then
		echo 'Cannot execute this with an active virtualenv'
	else
		PIP_REQUIRE_VIRTUALENV="" pip "$@"
	fi
}
syspip2(){
	if [ ! -z ${VIRTUAL_ENV} ]; then
		echo 'Cannot execute this with an active virtualenv'
	else
    	PIP_REQUIRE_VIRTUALENV="" pip2.7 "$@"
    fi
}
syspip3(){
	if [ ! -z ${VIRTUAL_ENV} ]; then
		echo 'Cannot execute this with an active virtualenv'
	else
    	PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
    fi
}

syspip_upgrade_all(){
	if [ ! -z ${VIRTUAL_ENV} ]; then
		echo 'Cannot execute this with an active virtualenv'
	else
	    export PIP_REQUIRE_VIRTUALENV=''
	    pip freeze --local | grep -v ^-e | cut -d = -f 1  | xargs -n1 pip install -U
	    export PIP_REQUIRE_VIRTUALENV=true
	fi
}

md (){ 
	mkdir -p "$@" && cd "$@";
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

export HISTCONTROL=ignoredups

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

export PYENV_ROOT=/python
export PATH="${PYENV_ROOT}/bin:$PATH"
if which pyenv > /dev/null; then
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    source ~/.bash_profile-linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
	echo
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
	echo
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
	echo
elif [[ "$OSTYPE" == "freebsd"* ]]; then
	echo
else
	echo
fi

# Enable fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
