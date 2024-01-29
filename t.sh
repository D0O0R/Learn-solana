#!/bin/bash

# Set execution time to 4 hours (4 * 60 minutes * 60 seconds = 14400 seconds)
TIMEOUT=14400

echo $KEYPAIR > ~/solana.json
./pow get-all-faucets -ud -k ~/solana.json
# Use the timeout command to run your program
timeout --foreground $TIMEOUT ./pow mine  -ud -k ~/solana.json

echo "The program has been waiting for 4 hours and has been stopped."