#!/bin/bash
# Configuration
ORG="a___insert___orgid__here___9"
KEY="a___insert___apikey__here__9"
SEC="a___insert_apisecret__here__9"
API="https://api2.nicehash.com" #prod env
#API="https://api-test.nicehash.com" # test env

# Command
NHCLIENT="python3 nicehash.py -b $API -o $ORG -k $KEY -s $SEC"

# Run method
eval "$NHCLIENT -m GET -p '/main/api/v2/mining/rigs2'";
eval "$NHCLIENT -m POST -p '/main/api/v2/mining/rigs/status2' -b '{"rigId":"0__insert__rigid__here_9","deviceId":"0__insert__deviceid__here_9","action":"START"}'"