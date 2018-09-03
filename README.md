# ens-test

## Instructions

### Init and update submodules

``` bash
git submodule init
git submodule update
```

### Modify 10_export.sh

Pro-tip: you can create a new 10_export_DO_NOT_TRACK.sh if you want to
provide some local overrides.

### (Optional) Start the Ganache local testnet

``` bash
./scripts/20_start_ganeche.sh
```

### Deploy the ENS contracts

``` bash
./scripts/30_deploy_ens.sh
```

Expected output:

```
...
Using network 'env.auction'.

Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0x...
  Migrations: 0x...
Saving successful migration to network...
  ... 0x...
Saving artifacts...
Running migration: 2_deploy_contracts.js
Available accounts: 0xe6ef0915f245bd9180a8388fe44fb3e93c331561
  Deploying ENSRegistry...
  ... 0x...
  ENSRegistry: 0x...
  Deploying Registrar...
  ... 0x...
  Registrar: 0x...
Saving successful migration to network...
  ... 0x...
  ... 0x...
Saving artifacts...
```

### Run ether-ens commands

This is just to make sure the deployed ENS contracts work as expected:

``` bash
./scripts/40_run_ethers_ens.sh
```

Expected output:

```
Using ENSRegistry at 0x...
...
this(Registrar).config:
{ ensAddress: '0x...' }
Network: mainnet
Initializing a new JSON wallet - test-ethers-ens-account.json
Keep this password and file SAFE!! If lost or forgotten
it CANNOT be recovered, by ANYone, EVER.
Account Password: ***
Confirm Password: ***
New account address: 0x...
this(Registrar).config:
{ ensAddress: '0x...' }
Network: mainnet
kevinzchn.eth
  State:                open
  Available Start Date: 2018-09-03 19:42:26 (1:21 ago)
this(Registrar).config:
{ ensAddress: '0x...' }
Network: mainnet
Account Password: ***
(node:9241) UnhandledPromiseRejectionWarning: Error: sender doesn't have enough funds to send tx. The upfront cost is: 30000000000000000 and the sender's account only has: 0
...
```
