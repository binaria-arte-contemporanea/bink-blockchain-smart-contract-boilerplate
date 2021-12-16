#!/bin/bash
export ./dev.env
echo "Development wallet"
./node_modules/.bin/ganache-cli -d -m "$DEV_WALLET"