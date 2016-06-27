
#xrdb -merge ~/.Xresources &&
#xcompmgr -n &&
xmodmap -e "clear lock" &&
setxkbmap -option grp:caps_toggle "us,se" &&
xrandr --output LVDS1 --off &&
xrandr --output DP3 --auto --left-of LVDS1 &&
xrandr --output VGA1 --auto --right-of DP3 &&
xrandr --output VGA1 --rotate left &&
#xrandr --output DP3 --rotate left &&
#xrandr --output VGA1 --rotate right &&
./scripts/changeWallpaper & 

