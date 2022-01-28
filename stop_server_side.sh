#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

read -p "Do you just want to stop or reset your demo system and therefore delete all data? [stop|reset]" input

case $input in
	reset)

		printf "\n${red}Starting deletion in 10 seconds. Please abort if this was a mistake ...${reset}\n"
		count=10
		while [ $count -ge 0 ]
		do
			echo $count seconds
			count=`expr $count - 1`
			sleep 1
		done

		echo "${yellow}Stoping all containers now ...${reset}"
		docker stop von_node1_1 von_node2_1 von_node3_1 von_node4_1 von_webserver_1 indy-demo-postgres docker_tails-server_1

		echo "${yellow}Removing old and stopped containers ...${reset}"
		docker rm -f $(docker ps -a -q)

		echo "${yellow}Removing old and unused containers ...${reset}"
		docker volume rm $(docker volume ls -q)
		echo "${green}Reset finished!${reset}"
		;;

	stop)
                echo "${yellow}Stoping all containers now ...${reset}"
                docker stop von_node1_1 von_node2_1 von_node3_1 von_node4_1 von_webserver_1 indy-demo-postgres docker_tails-server_1
		echo "${green}System stopped!${reset}"
		;;
	*)
		echo "${red}Wrong input! Please enter stop or reset${reset}"
		;;
esac
