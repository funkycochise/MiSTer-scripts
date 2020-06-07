#!/bin/bash

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Copyright 2020-2021 Aka "Naku" Ben

# You can download the latest version of this script from:
# https://github.com/nakuakaben/MiSTer-scripts


# Version 1.1 - 2020-06-07 - Modification of the code: use of temporary directory and cleaning at the end of the script.
# Version 1.0 - 2020-06-04 - First commit.

#=========   USER OPTIONS   =========
#Url
GIT="https://github.com"
SCRIPT_SH="clm_script.sh"
SCRIPT_URL="$GIT/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"

#========= ADVANCED OPTIONS =========


#========= CODE STARTS HERE =========
clear

UPDATER_VERSION="1.1"

echo -e "\033[1;36m +---------------------------+\033[0m"
echo -e "\033[1;36m     Updater version ${UPDATER_VERSION}\033[0m"
echo -e "\033[1;36m +---------------------------+\033[0m"

echo -e "\nDownloading last version of $CLM \n"
    wget -q -t 3 --output-file=/tmp/wget-log --show-progress -O /tmp/$SCRIPT_SH $SCRIPT_URL
	# curl -O "${SCRIPT_URL}"
echo ""
echo -e "Make executable $CLM...\c"
	chmod +x /tmp/$SCRIPT_SH
echo "done"

echo -en "\n\033[1;33m Run script \033[0m"; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; sleep 0.05; echo -n "."; sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n "."; echo -n "]";
echo ""
	/tmp/$SCRIPT_SH

echo -e "Cleaning.........\c"	
    rm -f /tmp/$SCRIPT_SH
echo "done"
echo ""

exit 0
