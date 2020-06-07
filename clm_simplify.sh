#!/bin/bash

# option
URL="https://github.com"
SCRIPT_SH="clm_script.sh"
SCRIPT_URL="$URL/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"
GET_PNG="$URL/nakuakaben/MiSTer-scripts/raw/master/MiSTer/"
MISTER_PATH="$HOME/MiSTer/"

MISTER_URL="$URL/MiSTer-devel/"

# logo
OPTION1="nologo.png"
OPTION2="mylogo.png"

# others 
VERSION="1.0"

# code start here
clear

# check for the necessary files
echo -e "Change Logo Mister - Simplify v$VERSION \n"

echo -e "Delete old files  ... \c"
    rm -rf "${MISTER_PATH}Main_MiSter/"
    rm -f "${MISTER_PATH}MiSTer"
    echo "done"
 
options=("$OPTION1" "$OPTION2")
for p in "${options[@]}" 
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

sleep 2

# clone git main_mister
echo ""
    cd $MISTER_PATH
    git clone "${MISTER_URL}Main_MiSter.git"

# choose nologo, mylogo or keep

echo ""
echo "Do you want to change the logo displayed on the screen ?"

function nologo {
    echo ""
    echo -en "Copy ...";cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"     
}
function mylogo {
    echo ""
    echo -en "Copy ...";cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"      
}

PS3='Please enter your choice: '
choices=("$OPTION1" "$OPTION2" "Keep")
select opt in "${choices[@]}"
do
    case $opt in
        "$OPTION1")
            nologo 
            break
            ;;
        "$OPTION2")
            mylogo
            break
            ;;
        "Keep")
            break
            ;;
        *) echo -e "\033[1;31m Lost ?\033[0m, please select: \n 1) $OPTION1 \n 2) $OPTION2 \n 3) keep \n";;
    esac
done

# complile
echo ""
cd "${MISTER_PATH}Main_MiSter/" && make -i | pv -tr >/dev/null

#move mister_file to mister_path
echo -en "Copy ...";cp -v "${MISTER_PATH}Main_MiSter/MiSTer" ${MISTER_PATH}  

echo "Done!"
exit 0