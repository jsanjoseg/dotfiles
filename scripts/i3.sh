#!/bin/bash

set -euo pipefail

function install_i3() {
    install_packages i3
    install_packages i3blocks
}

echo
echo "Installing i3 WM"
install_i3
