#!/usr/bin/env bash
pidof i3bar && kill "$(pidof i3bar)" && exit 0
i3bar --transparency
