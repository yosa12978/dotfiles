#!/bin/bash

[ "$(echo -e "No\nYes" | dmenu -i -p "Do you want to shutdown?")" == "Yes" ] && shutdown -h now
