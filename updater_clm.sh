#!/bin/bash

# You can download the latest version of this script from:
# https://github.com/nakuakaben/MiSTer-scripts

# Version 1.1 - 2020-06-07 - Modification of the code: use of temporary directory and cleaning at the end of the script.
# Version 1.0 - 2020-06-04 - First commit.

# variable
GIT="https://github.com"
SCRIPT_SH="clm_script.sh"
SCRIPT_URL="$GIT/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"
UPDATER_VERSION="1.1"

# code start here
clear
echo -e "Updater $UPDATER_VERSION\n" # display updater version

echo "Downloading..."
	wget -q -t 3 --output-file=/tmp/wget-log --show-progress -O /tmp/$SCRIPT_SH $SCRIPT_URL # downloading to output /tmp
	chmod +x /tmp/$SCRIPT_SH # make executable script
echo "done"

echo -en "Run script"; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; sleep 0.05; echo -n "."; sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n "."; echo -n "]";
	/tmp/$SCRIPT_SH # run script 
	rm -f /tmp/$SCRIPT_SH # clean file in /tmp at the end
exit 0
