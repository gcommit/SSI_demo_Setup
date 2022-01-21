#!/bin/bash

yellow=`tput setaf 3`
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

read -p "Do you want to start complete demo environment or just the ledger? [all|ledger]" input
case $input in
	all)
                IP=`docker run --rm --net=host eclipse/che-ip`
                export IP
                echo "==============================================================="
                echo "${red}LINKS:${reset}"
                echo "${green}Login to the services${reset}:"
                echo "${green}PGADMIN${reset}"
                echo "${yellow}Link:${reset} http://localhost:8080/browser/"
                echo "${yellow}Username:${reset} user@me.de"
                echo "${yellow}Password:${reset} mypassword"
                echo "==============================================================="
                echo "${green}Connection for PostgreSQL${reset}:"
                echo "${yellow}URL:${reset} $IP"
                echo "${yellow}Username:${reset} monitor"
                echo "${yellow}Password:${reset} mypassword"
                echo "==============================================================="
                echo "${green}Network / Ledger Explorer${reset}"
                echo "${yellow}Link:${reset} http://localhost:9000"
                echo "${yellow}Username / Password:${reset} not required"
                echo "==============================================================="
                echo "${green}Swagger UIs${reset}"
                echo "${yellow}Faber:${reset} http://localhost:8021"
                echo "${yellow}Alice:${reset} http://localhost:8031"
                echo "${yellow}ACME:${reset} http://localhost:8041"
		echo ""
		read -p "Do you want to open created URLs automatically in the browser? [yes|no]" input2
		case $input2 in
		yes)
			open -a Terminal.app $HOME/ssi/START/pull_repos.sh
			sleep 10
			open -a Terminal.app $HOME/ssi/START/check_images.sh
			sleep 10
			open -a Terminal.app $HOME/ssi/START/start_basic.sh
			sleep 20
			open -a Terminal.app $HOME/ssi/START/start_faber.sh
			sleep 5
			open -a Terminal.app $HOME/ssi/START/start_acme.sh
			sleep 5
			open -a Terminal.app $HOME/ssi/START/start_alice.sh
			sleep 30
			open -n -a "Google Chrome" http://localhost:8080/browser/
			open -n -a "Google Chrome" http://localhost:9000
			open -n -a "Google Chrome" http://localhost:8021
			open -n -a "Google Chrome" http://localhost:8031
			open -n -a "Google Chrome" http://localhost:8041
			;;
		no)
                        open -a Terminal.app $HOME/ssi/START/pull_repos.sh
                        sleep 10
                        open -a Terminal.app $HOME/ssi/START/check_images.sh
                        sleep 10
                        open -a Terminal.app $HOME/ssi/START/start_basic.sh
                        sleep 20
                        open -a Terminal.app $HOME/ssi/START/start_faber.sh
                        sleep 5
                        open -a Terminal.app $HOME/ssi/START/start_acme.sh
                        sleep 5
                        open -a Terminal.app $HOME/ssi/START/start_alice.sh
			;;
		esac
		;;
	
	ledger)
                IP=`docker run --rm --net=host eclipse/che-ip`
                export IP
                echo "==============================================================="
                echo "${red}LINKS:${reset}"
                echo "${green}Login to the services${reset}:"
                echo "${green}PGADMIN${reset}"
                echo "${yellow}Link:${reset} http://localhost:8080/browser/"
                echo "${yellow}Username:${reset} user@me.de"
                echo "${yellow}Password:${reset} mypassword"
                echo "==============================================================="
                echo "${green}Connection for PostgreSQL${reset}:"
                echo "${yellow}URL:${reset} $IP"
                echo "${yellow}Username:${reset} monitor"
                echo "${yellow}Password:${reset} mypassword"
                echo "==============================================================="
                echo "${green}Network / Ledger Explorer${reset}"
                echo "${yellow}Link:${reset} http://localhost:9000"
                echo "${yellow}Username / Password:${reset} not required"
                echo ""
                read -p "Do you want to open created URLs automatically in the browser? [yes|no]" input2
                case $input2 in
                yes)            
	                open -a Terminal.app $HOME/ssi/START/pull_repos.sh
                        sleep 10
			open -a Terminal.app $HOME/ssi/START/check_images.sh
			sleep 10
			open -a Terminal.app $HOME/ssi/START/start_basic.sh
                        sleep 20
			open -n -a "Google Chrome" http://localhost:8080/browser/
			open -n -a "Google Chrome" http://localhost:9000
			;;
		no)
                        open -a Terminal.app $HOME/ssi/START/pull_repos.sh
                        sleep 10
                        open -a Terminal.app $HOME/ssi/START/check_images.sh
                        sleep 10
                        open -a Terminal.app $HOME/ssi/START/start_basic.sh
			;;
		esac
		;;

	*)
		echo "${red}Wrong input. Start the script again and use all or ledger option${reset}"
esac
