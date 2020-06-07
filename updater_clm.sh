#!/bin/bash

# You can download the latest version of this script from:
# https://github.com/nakuakaben/MiSTer-scripts

# Version 1.1 - 2020-06-07 - Modification of the code: use of temporary directory and cleaning at the end of the script.
# Version 1.0 - 2020-06-04 - First commit.

# variable
GIT="https://github.com"
SCRIPT_SH="clm_script.sh"
SCRIPT_URL="$GIT/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"
MISTER_PATH="$HOME/MiSTer/"
GET_PNG="$GIT/nakuakaben/MiSTer-scripts/raw/master/MiSTer/"

VERSION="1.1"

# code start here
clear

# check for the necessary files
echo -e "Check folder/files and Update $VERSION \n" # display updater version

options=("color.png" "japan.png" "nologo.png" "mylogo.png")
for p in "${options[@]}" # pour $p choissir l'element [@] dans la variable "options" 
do
echo -e "MiSTer/$p ... \c"
    if [ ! -f "$MISTER_PATH${p}" ]; then
        if curl --location --head --fail -k --silent "$GET_PNG${p}" >/dev/null; then
            echo "downloading"
            wget "$GET_PNG${p}" -t 3 --show-progress -q --no-check-certificate -nc -c -P $MISTER_PATH
        else
			echo "not found"
        fi
    else
		echo "done"
	fi
done

echo -e "\nDownloading last version of CLM"
	wget -q -t 3 --output-file=/tmp/wget-log --show-progress -O /tmp/$SCRIPT_SH $SCRIPT_URL # downloading to output /tmp
	chmod +x /tmp/$SCRIPT_SH # make executable script

echo -e "\nRun\n"
	/tmp/$SCRIPT_SH # run script 
	rm -f /tmp/$SCRIPT_SH # clean file in /tmp at the end
exit 0
