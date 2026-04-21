#!/bin/bash
set -e

echo "=== Make scripts executable ==="
sudo chmod +x /hacking-demo-macos/scripts/ 

echo "=== Run script 1: lamp.sh ==="
sudo bash .hacking-demo/scripts/lamp.sh

echo "=== Run script 2: phpmyadmin.sh ==="
sudo bash .hacking-demo/scripts/phpmyadmin.sh

echo "=== Run script 3: hacking_demo.sh ==="
sudo bash .hacking-demo/scripts/hacking_demo.sh

echo "=== Done ==="