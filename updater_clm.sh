#!/bin/bash

URL="https://github.com"
SCRIPT_URL="https://raw.githubusercontent.com/nakuakaben/MiSTer-scripts/master/clm_script.sh"

clear
echo -e "\033[1;36m -----------\033[0m"
echo -e "\033[1;36m Updater CLM\033[0m"
echo -e "\033[1;36m -----------\033[0m"

# echo -e "\n Remove old version of CLM ...\c"
#	rm -f clm_script.sh
# echo "done"

echo -e "\n Downloading last version of CLM \n"
	curl -O "${SCRIPT_URL}"
	# wget "${SCRIPT_URL}" -t 3 --show-progress -q --no-check-certificate
echo ""
echo -e "\033[1;32m Give the execution rights to the script...\033[0m\c"
	chmod +x clm_script.sh
echo "done"

sleep 2

echo -en "\n\033[1;33m Run script \033[0m"; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; sleep 0.05; echo -n "."; sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n "."; echo -n "]";
echo ""
	./clm_script.sh

echo -e "Cleaning.........\c"	
    rm -f clm_script.sh
echo "done"
echo ""

exit 0
