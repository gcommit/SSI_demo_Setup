#!/bin/bash
# HOW TO START ALL COMPONENTS

# START ALICE AGENT
LEDGER_URL=http://$IP:9000 POSTGRES="true" $HOME/ssi/aries-cloudagent-python/demo/run_demo alice
