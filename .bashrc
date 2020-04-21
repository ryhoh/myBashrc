# Bash customization ------------

# Different by OS
case `uname` in
    "Darwin" )
        PATH=$PATH":/Users/tetsuya/Library/Android/sdk/platform-tools"
        alias ls="ls -G"
        alias l="ls -GF"
        alias ll="ls -al"
        alias subl=""
        export LSCOLORS=xbfxcxdxbxegedabagacad
        export CXX='g++-8'
        export CC='gcc-8'
        alias gcc="gcc-8"
        alias g++="g++-8"

        if [ ! -e "/usr/local/bin/subl" ]; then
            ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
        fi


    PATH=$PATH":~/Dropbox/joint"
    PATH=$PATH":~/.cargo/bin"

    # heroku autocomplete setup
    HEROKU_AC_BASH_SETUP_PATH=/Users/tetsuya/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

        ;;
    "Linux" )
        source ~/default.bashrc
        ;;
    * ) echo ".bashrc loading error occured." ;;
esac


# Common for ALL shirosha2's devices
if [ $UID -eq 0 ]; then
    PS1="# "
else
    PS1="$ "
fi

alias dot="dot -K dot -T png"
