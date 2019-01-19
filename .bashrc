# Bash customization ------------
# Common for ALL shirosha2's devices
if [ $UID -eq 0 ]; then
	PS1="# "
else
	PS1="$ "
fi

alias dot="dot -K dot -T png"

# Different by OS
case `uname` in
    "Darwin" )
        alias ls="ls -G"
        alias l="ls -GF"
        alias ll="ls -al"
        export LSCOLORS=xbfxcxdxbxegedabagacad
        alias myenv="docker run -w '`pwd`' -it -v /Users:/Users myenv /bin/bash"
        alias gp14="g++-7 -std=c++14"
        sh ~/Dropbox/tmLocalssDeleter.sh ;;
    "Linux" )
        alias myenv="docker run -w '`pwd`' -it -v /home/tetsuya:/home/tetsuya myenv /bin/bash" ;;
    * ) echo ".bashrc loading error occured." ;;
esac

# PATH=$PATH":~/Dropbox/joint"


# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/tetsuya/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;