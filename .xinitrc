nitrogen --restore &
xinput set-prop 10 "libinput Accel Profile Enabled" 0 1 0
xinput --set-prop 10 'libinput Accel Speed' -0.45
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
xset dpms 300 &
xss-lock -- slock &
sxhkd &
dunst &
while true; do
    $HOME/.local/scripts/dwmstatus.sh
    sleep 5
done &
xcompmgr &
exec dwm
