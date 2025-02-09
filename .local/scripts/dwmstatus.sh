#!/bin/bash

get_time() {
    date '+%Y %b %d (%a) %H:%M'
}

get_wifi() {
    ssid=$(nmcli connection show --active| awk '$(NF-1)=="wifi"{ print $1 }')
    [ -n "$ssid" ] && echo "Wi-Fi: $ssid"
}

get_ethernet() {
    if [ -n "$(nmcli connection show --active | awk '$(NF-1)=="ethernet"{ print $(NF-1) }')" ]; then
        echo "ETH: up"
        return 0 
    fi
}

get_memory() {
    free -h | awk '/^Mem:/ {print "MEM: " $3 "/" $2}'
}

get_volume() {
    volume_info=$(amixer get Master | grep -o '\[[0-9]\+%\]\s\[.*\]' | head -1 | tr -s '\[\]' ' ')
    volume_percentage=$(echo "$volume_info" | cut -d ' ' -f2)
    volume_mute=$(echo "$volume_info" | rev | cut -d ' ' -f2 | rev)
    if [ "$volume_mute" == "on" ]; then
        volume_mute=""
    else
        volume_mute="(m)"
    fi

    echo "VOL: $volume_percentage$volume_mute"
}

get_battery() {
    if [ -d /sys/class/power_supply/BAT0 ]; then
        battery=$(cat /sys/class/power_supply/BAT0/capacity)
        status=$(cat /sys/class/power_supply/BAT0/status)
        if [ "$status" == "Charging" ]; then
            status="(c)"
        else
            status=""
        fi
        echo "BAT: $battery%$status"
#    else
#        echo "BAT: N/A"
    fi
}

update_status() {
    status=" $(get_volume) | $(get_wifi) | $(get_ethernet) | $(get_memory) | $(get_battery) | $(get_time) "
    status=$(echo "$status" | sed 's/|[ |]*|/|/g' )
    xsetroot -name "$status" 2> /dev/null
}

update_status
