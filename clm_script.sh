#!/bin/bash

# option
URL="https://github.com"
GET_PNG="$URL/nakuakaben/MiSTer-scripts/raw/master/MiSTer/"
MISTER_PATH="$HOME/MiSTer/"

MISTER_URL="$URL/MiSTer-devel/"

# logo
OPTION1="nologo.png"
OPTION2="mylogo.png"
OPTION3="color.png"
OPTION4="japan.png"

# others 
VERSION="1.0.7"
# code start here
clear

# check for the necessary files
echo -e "Change Logo Mister - Simplify v$VERSION \n"

echo -e "Delete old files  ... \c"
    rm -rf "${MISTER_PATH}Main_MiSter/"
    rm -f "${MISTER_PATH}MiSTer"
    echo -e "\033[1;32mdone\033[0m"
 
options=("$OPTION1" "$OPTION2" "$OPTION3" "$OPTION4")
for p in "${options[@]}" 
do
echo -e "MiSTer/$p ... \c"
    if [ ! -f "$MISTER_PATH${p}" ]; then
        if curl --location --head --fail -k --silent "$GET_PNG${p}" >/dev/null; then
            echo "downloading"
            wget "$GET_PNG${p}" -t 3 --show-progress -q --no-check-certificate -nc -c -P "$MISTER_PATH"
        else
	    echo "not found"
        fi
    else
	echo -e "\033[1;32mdone\033[0m"
    fi
done

sleep 2

# clone git main_mister
echo ""
    cd "$MISTER_PATH" || return
    git clone "${MISTER_URL}Main_MiSter.git"

# choose nologo, mylogo or keep

echo ""
echo "Do you want to change the logo displayed on the screen ?"

function nologo {
    echo ""
    echo -e "Copy $opt... \c"
    	cp "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"
    echo -e "\033[1;32mdone\033[0m"
}
function mylogo {
    echo ""
    echo -e "Copy $opt... \c"
    	cp "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"
    echo -e "\033[1;32mdone\033[0m"   
}
function color {
    echo ""
    echo -e "Copy $opt... \c"
    	cp "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"
    echo -e "\033[1;32mdone\033[0m"
}
function japan {
    echo ""
    echo -e "Copy $opt... \c"
    	cp "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"
    echo -e "\033[1;32mdone\033[0m"
}

PS3='Please enter your choice: '
options=("$OPTION1" "$OPTION2" "$OPTION3" "$OPTION4" "Keep")
select opt in "${options[@]}"
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
        "$OPTION3")
            color
            break
            ;;
        "$OPTION4")
            japan
            break
            ;;
        "Keep")
            break
            ;;
        *) echo -e "\n No Way, please select: \n 1) $OPTION1 \n 2) $OPTION2 \n 3) $OPTION3 \n 4) $OPTION4 \n 5) Keep \n";;
    esac
done

# complile
echo ""
cd "${MISTER_PATH}Main_MiSter/" && make -i | pv -tr >/dev/null

#move mister_file to mister_path
echo -e "\nCopy MiSTer (file) to $MISTER_PATH... \c"
	cp "${MISTER_PATH}Main_MiSter/MiSTer" "$MISTER_PATH"
echo -e "\033[1;32mdone\033[0m"
exit 0
