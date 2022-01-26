#!/bin/bash
# HOW TO START ALL COMPONENTS

                IP=`docker run --rm --net=host eclipse/che-ip`
                export IP

# START ALICE AGENT
LEDGER_URL=http://$IP:9000 POSTGRES="true" $HOME/ssi/aries-cloudagent-python/demo/run_demo alice
