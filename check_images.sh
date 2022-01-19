#!/bin/bash

yellow=`tput setaf 3`
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${yellow}Checking if network image exists ...${reset}"

result=$(docker images -q von-network-base)
if [[ -n "$result" ]]; then
    echo "${green}Network image exists - nothing to do here${reset}"
else
    $HOME/ssi/von-network/manage build
    echo "${green}Network image built ...${reset}"
fi
