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

### Run ether-ens commands

This is just to make sure the deployed ENS contracts work as expected:

``` bash
./scripts/40_run_ethers_ens.sh
```
