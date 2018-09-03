#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

export ENSREGISTRY_ADDRESS=`python -c 'import json; print json.load(open("subs/ens/build/contracts/ENSRegistry.json"))["networks"].items()[0][1]["address"]'`
echo "Using ENSRegistry at $ENSREGISTRY_ADDRESS"
rm subs/ethers-ens/test-ethers-ens-account.json
cd subs/ethers-ens
npm i
./bin/ethers-ens --rpc "${ETHEREUM_HTTP}" --ensaddress "$ENSREGISTRY_ADDRESS" init test-ethers-ens-account.json
./bin/ethers-ens --rpc "${ETHEREUM_HTTP}" --ensaddress "$ENSREGISTRY_ADDRESS" lookup kevinzchn.eth
./bin/ethers-ens --rpc "${ETHEREUM_HTTP}" --ensaddress "$ENSREGISTRY_ADDRESS" --account test-ethers-ens-account.json start-auction kevinzchn.eth
