#!/bin/bash

echo $KEYPAIR > ~/solana.json

END=$((SECONDS+14400))

# Loop when the current time is less than the end time
while [ $SECONDS -lt $END ]; do
    ./pow get-all-faucets -ud -k ~/solana.json
    ./pow mine --target-lamports 100000000 -ud -k ~/solana.json
    sleep 1
done

echo "The program has been waiting for 4 hours and has been stopped."