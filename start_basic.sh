#!/bin/bash

# HOW TO START ALL COMPONENTS
yellow=`tput setaf 3`
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# START LEDGER NETWORK
echo "${yellow}Starting Network ...${reset}"
$HOME/ssi/von-network/manage start

# DOCKER VOLUME CREATE
echo "${yellow}Creating postgres volume${reset}"
docker volume create postgres_volume

# START POSTGRES
echo "${yellow}Starting PostgreSQL${reset}"
$HOME/ssi/aries-cloudagent-python/scripts/run_postgres

# START PGADMIN
echo "${yellow}Start PGADMIN${reset}"
docker run -p 8080:80 -e 'PGADMIN_DEFAULT_EMAIL=user@me.de' -e 'PGADMIN_DEFAULT_PASSWORD=mypassword' --name pgadmin -d dpage/pgadmin4

# START TAILS SERVER
echo "${yellow}Start TAILS Server${reset}"
$HOME/ssi/indy-tails-server/docker/manage start

# CREATE PSQL USER FOR PGADMIN
echo "${yellow}Creating PostgreSQL user monitor${reset}"
docker exec --user postgres -it indy-demo-postgres psql -c "CREATE USER monitor WITH PASSWORD 'mypassword';"
docker exec --user postgres -it indy-demo-postgres psql -c "ALTER USER monitor WITH SUPERUSER;;"
