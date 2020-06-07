#!/bin/bash

# option
GIT="https://github.com"
SCRIPT_SH="clm_script.sh"
SCRIPT_URL="$GIT/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"
MISTER_PATH="$HOME/MiSTer/"
MISTER_URL="$GIT/MiSTer-devel/"
GET_PNG="$GIT/nakuakaben/MiSTer-scripts/raw/master/MiSTer/"

CHECK_VERSION="1.2.1" # check
CLM_VERSION="1.1" # clm

# logo
OPTION1="color.png"
OPTION2="japan.png"
OPTION3="nologo.png"
OPTION4="mylogo.png"
OPTION5="logo.png"

# code start here
clear

# check for the necessary files
echo -e "Check folder/files and Update $CHECK_VERSION \n" # display updater version

options=("$OPTION3")
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

# clone git main_mister
cd $MISTER_PATH
git clone "${MISTER_URL}Main_MiSter.git"
 
# change for nologo.png
cp -v "$MISTER_PATH${OPTION3}" "${MISTER_PATH}Main_MiSter/logo.png" 

# complile
cd "${MISTER_PATH}Main_MiSter/" && make -i | pv -tr >make.tmp

#move mister_file to mister_path
cp -v "${MISTER_PATH}Main_MiSter/MiSTer" ${MISTER_PATH}  

echo "Done!"
exit 0
