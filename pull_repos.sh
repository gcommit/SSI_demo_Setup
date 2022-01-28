#!/bin/bash

yellow=`tput setaf 3`
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


echo "${yellow}Checking ACAPY ...${reset}"
if cd $HOME/ssi/aries-cloudagent-python
then
       echo "${green}Already exists ...${reset}"
else
       echo "${green}Cloning ACAPY now ...${reset}"
       git clone https://github.com/hyperledger/aries-cloudagent-python $HOME/ssi/aries-cloudagent-python
fi

echo "${yellow}Checking TAILS server ...${reset}"
if cd $HOME/ssi/indy-tails-server
then
       echo "${green}Already exists ...${reset}"
else
       echo "${green}Cloning TAILS server now ...${reset}"
       git clone https://github.com/bcgov/indy-tails-server.git $HOME/ssi/indy-tails-server
fi

echo "${yellow}Checking von-network ...${reset}"
if cd $HOME/ssi/von-network
then
       echo "${green}Already exists ...${reset}"
else
       echo "${green}Cloning von-network now ...${reset}"
       git clone https://github.com/bcgov/von-network.git $HOME/ssi/von-network
fi
