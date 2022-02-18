**Demo Ledger Setup**


## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Demo](#demo)
* [Reset](#reset)


## General info
This project will start you a full demo setup of the SSI project, with acapy agents, network ledger, postgres etc. 

## Technologies
Project is created with:
* PostgreSQL
* Von Network (https://github.com/bcgov/von-network.git)
* Acapy Agent (https://github.com/hyperledger/aries-cloudagent-python)
* Indy Tails Server (https://github.com/bcgov/indy-tails-server.git)
	
## Setup
```
$ mkdir -p $HOME/ssi
$ cd $HOME/ssi
$ git clone
$ mv demoSTART START
```

## Demo
Simply run the start_all.sh script, answer the questions and enjoy!
```
$ cd $HOME/ssi
$ ./START/start_all.sh
```

Read here more about how to use the demo agents: https://github.com/hyperledger/aries-cloudagent-python/blob/main/demo/README.md

## Reset
To reset the started setup just run the reset and follow the questions
```
$ cd $HOME/ssi
$ ./START/reset_blockchain.sh
```
