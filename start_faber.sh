#!/bin/bash
# HOW TO START ALL COMPONENTS

                IP=`docker run --rm --net=host eclipse/che-ip`
                export IP

# START FABER AGENT
LEDGER_URL=http://$IP:9000 POSTGRES="true" PUBLIC_TAILS_SERVER=http://192.168.65.3:6543 $HOME/ssi/aries-cloudagent-python/demo//run_demo faber --revocation
