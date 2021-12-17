#!/bin/bash
source ./dev.env
echo "Development wallet :"
echo ${DEV_WALLET}
echo "================================================"

./node_modules/.bin/ganache-cli -d -m "$DEV_WALLET"