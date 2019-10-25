#!/bin/bash

# Get touchpad id
name=$(xinput list --name-only | grep --ignore-case touchpad)
id=$(xinput --list --id-only "${name}")

# Enable tapping
xinput --set-prop "${id}" 'libinput Tapping Enabled' '1'

# Enable natural scrolling
xinput --set-prop "${id}" 'libinput Natural Scrolling Enabled' '1'
