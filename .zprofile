
#cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XINITRC="$HOME/.xinitrc"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$HOME/.config/zsh/"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export GOPATH="$XDG_DATA_HOME/go"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

#Directories
export PATH="$HOME/.local/bin:$HOME/.script/statusbar:$HOME/.script:$PATH"
export DLDIR="$HOME/dl"
export PICTUREDIR="$HOME/pic"
export VIDDIR="$HOME/vid"
export RECVIDDIR="$VIDDIR/screenrec/"
export BGDIR="$PICTUREDIR/bg"
export PERVIKIDIR="/home/jay/Learnig/wiki/"
export SYBBI_III_DIR="/home/jay/Learnig/sybbi/"
export SYBBI_IV_DIR="/home/jay/Learnig/SYBBI-Sem_IV/"
export BLENDERAPPDIR="/home/jay/blender/blender-3.3.1-linux-x64/"
export CURRENT_BLEND="/home/jay/blender/Animation_20-spiner.blend"
export MUSICDIR="$HOME/vid/Music/"
export SSDIR="$HOME/pic/screenshot/"
export SUDO_ASKPASS="$HOME/.script/dmenuaskpass"
#dont remembers what it stand for
#export LOLMUDIR=

#defult application
export TERMINAL=st
export EDITOR=vim
export VIDIOPLAYER=mpv
export BROWSER=brave
export BLENDER="$BLENDERAPPDIR/blender"
export BLENDEREXP="/home/jay/blender/blender-3.3.0-alpha+temp-viewport-compositor-merge.3de2575ffb23-linux.x86_64-release/blender"
export IMGVIEWER="sxiv"
export AUDIOMNG="pulsemixer"


#wal -R 
#cal
[ -z "${DISPLAY}" ] && [ "$TTY" = /dev/tty1 ] && exec startx

#something about c 
export CC="clang"
 export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
  export LDLIBS="-lcrypt -lcs50 -lm"

