#!/bin/bash

#mi sruff
dunst --startup_notification true &
xrandr --output eDP --auto
xrandr --output eDP --gamma 0.8:0.8:0.8 &
xrandr --auto
sxhkd &
compton -I 1 -D 3 -m 0.9 -G &
wal -R ; setwal &
pulseaudio -k ; pulseaudio &
dwmblocks &
# MPD daemon start (if no other user instance exists)
mpd & notify-send "mpd up" &
rfid-scan &

#change caps lock
xmodmap -e 'clear lock' &
xmodmap -e 'keycode 66 = Escape' &
#extra keys map
xmodmap ~/.config/keybind/xmodmap-HP.conf &
#calcurece
$TERMINAL -e calcurse &
#brightness
echo "75" > "/sys/class/backlight/radeon_bl0/brightness"



#while [ 1 ] 
#do
#	time_l="$(date +%k)"
#	[ "$time_l" -ge 23 ] && loginctl poweroff
#	[ "$time_l" -le 6 ] && loginctl poweroff
#	sleep 20h
#done&

##exec dwm1
#exec openbox-session
#exec xfwm4 --compositor=on
## Here dwm is kept as default
session=${1:-"dwm"}

case $session in
		"xfce") EXEC="xfwm4 --compositor=on" ;;
    dwm) EXEC=dwm;;
	dwm1) EXEC=dwm1 ;;
		openbox|ob) EXEC=openbox-session;;
    *) EXEC=$1 ;;
esac
exce ${EXEC}
#rm $HOME/dwmlogout.tmp
while type $EXEC >/dev/null ; do 
	if [ -e "$HOME/dwmlogout.tmp" ]
then
break 
else
	$EXEC &&  continue || break
	fi
 done 
