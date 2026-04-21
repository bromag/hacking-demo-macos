#!/bin/bash

set -e

if [ "$EUID" -ne 0 ]; then

  echo "Please run as root"

  exit 1

fi

echo "=== Make scripts executable ==="
sudo chmod +x ./scripts/ 

echo "=== Run script 1: lamp.sh ==="
sudo bash ./scripts/lamp.sh

echo "=== Run script 2: phpmyadmin.sh ==="
sudo bash ./scripts/phpmyadmin.sh

echo "=== Run script 3: hacking_demo.sh ==="
sudo bash ./scripts/hacking_demo.sh

echo "=== Done ==="