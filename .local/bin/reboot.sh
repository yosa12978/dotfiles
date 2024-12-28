#!/bin/bash

[ "$(echo -e "No\nYes" | dmenu -i -p "Do you want to reboot?")" == "Yes" ] && reboot
