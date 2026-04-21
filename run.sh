#!/bin/bash
set -e

echo "=== Make scripts executable ==="
chmod +x ./scripts/lamp.sh ./scripts/phpmyadmin.sh

echo "=== Run script 1: lamp.sh ==="
sudo bash ./scripts/lamp.sh

echo "=== Run script 2: phpmyadmin.sh ==="
sudo bash ./scripts/phpmyadmin.sh

echo "=== Done ==="