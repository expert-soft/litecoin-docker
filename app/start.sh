#!/bin/bash
function gracefulShutdown {
echo Shutting down!
$COIN_BASE/app/litecoin-cli -conf=$COIN_BASE/data/LTC/config.conf -datadir=$COIN_BASE/data/LTC stop
}
trap gracefulShutdown SIGTERM
sleep 5
$COIN_BASE/app/litecoind -daemon=0 -conf=$COIN_BASE/data/LTC/config.conf -datadir=$COIN_BASE/data/LTC &
wait

