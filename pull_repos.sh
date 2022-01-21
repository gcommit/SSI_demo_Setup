#!/bin/bash

#!/bin/bash

echo "Checking ACAPY ..."
if cd $HOME/ssi/aries-cloudagent-python
then
       echo "Already exists ..."
else
       echo "Cloning ACAPY now ..."
       git clone https://github.com/hyperledger/aries-cloudagent-python $HOME/ssi/aries-cloudagent-python
fi

echo "Checking TAILS server ..."
if cd $HOME/ssi/indy-tails-server
then
       echo "Already exists ..."
else
       echo "Cloning TAILS server now ..."
       git clone https://github.com/bcgov/indy-tails-server.git $HOME/ssi/indy-tails-server
fi

echo "Checking von-network ..."
if cd $HOME/ssi/von-network
then
       echo "Already exists ..."
else
       echo "Cloning von-network now ..."
       git clone https://github.com/bcgov/von-network.git $HOME/ssi/von-network
fi
