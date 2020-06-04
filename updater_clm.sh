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



# Version 1.0 - 2020-06-04 - First commit.


#=========   USER OPTIONS   =========
#Url
URL="https://github.com"
SCRIPT_URL="https://raw.githubusercontent.com/nakuakaben/MiSTer-scripts/master/clm_script.sh"

#Specifies if old files (clm_script) will be deleted as part of an update.
DELETE_OLD_FILES="true"

#========= ADVANCED OPTIONS =========

UNRAR_DEBS_URL="http://http.us.debian.org/debian/pool/non-free/u/unrar-nonfree"
TEMP_PATH="/tmp"

#========= CODE STARTS HERE =========
clear

UPDATER_VERSION="1.0"
echo -e "\033[1;32m +-----------------------+"
echo -e "\033[1;37m CLM Updater version ${UPDATER_VERSION}"
echo ""

echo -e "\n Downloading last version of CLM \n"
	curl -O "${SCRIPT_URL}"
echo ""
echo -e "\033[1;32m Give the execution rights to the script...\033[0m\c"
	chmod +x clm_script.sh
echo "done"

echo -en "\n\033[1;33m Run script \033[0m"; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; sleep 0.05; echo -n "."; sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n "."; echo -n "]";
echo ""
	./clm_script.sh

echo -e "Cleaning.........\c"	
    rm -f clm_script.sh
echo "done"
echo ""

exit 0
