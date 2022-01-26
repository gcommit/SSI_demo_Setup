#!/bin/bash
# HOW TO START ALL COMPONENTS

# START ALICE AGENT
LEDGER_URL=http://192.168.65.3:9000 POSTGRES="true" $HOME/ssi/aries-cloudagent-python/demo/run_demo alice
