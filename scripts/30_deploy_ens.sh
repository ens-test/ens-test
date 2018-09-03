#!/bin/bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
. $SOURCE_DIR/10_export.sh

rm subs/ens/build/contracts/ENSRegistry.json
cd subs/ens
npm i
# truffle migrate --network env.fifs --reset
truffle migrate --network env.auction --reset
