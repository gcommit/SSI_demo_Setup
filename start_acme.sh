#!/bin/bash
# HOW TO START ALL COMPONENTS

# START FABER AGENT
LEDGER_URL=http://192.168.65.3:9000 POSTGRES="true" PUBLIC_TAILS_SERVER=http://192.168.65.3:6543 $HOME/ssi/aries-cloudagent-python/demo//run_demo acme
