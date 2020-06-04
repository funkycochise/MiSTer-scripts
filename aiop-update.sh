#!/bin/bash

if [ "$(uname -n)" != "MiSTer" ]
then
    echo "This script must be run"
    echo "on a MiSTer system."
    exit 1
fi

IFS=$'\n'

#=========   DIRECTORY OPTIONS   =========

#Base directory for all script’s tasks
#SD Root: BASE_PATH="/media/fat"
#USB Root: BASE_PATH="/media/usb0"
BASE_PATH="/media/fat"
SCRIPTS="${BASE_PATH}/Scripts/"


#URL
MAME_URL="https://archive.org/download/MAME220RomsOnlyMerged/"
HBMAME_URL="https://archive.org/download/hbmame0220/"

#Directory for MRA Files
#This is your Arcade Directory. This can be change to your liking
#NOTE: The directory needs an underscore "_" for MiSTer to see the Directory
MRA_PATH="${BASE_PATH}/_Arcade"
VERTICAL="${MRA_PATH}/_Vertical"
#VECTOR="${MRA_PATH}/_Vector"

MAME_FOLDER="${BASE_PATH}/games/mame/"
HBMAME_FOLDER="${BASE_PATH}/games/hbmame/"

#Files
INPUT_TATE="$SCRIPTS/arcade_tate.txt" #path of the file containing the list
INPUT_VECTOR="$SCRIPTS/arcade_vector.txt" #path of the file containing the list "vector"

#SH
UPDATE="${SCRIPTS}update.sh"
UPDATE_JTCORE="${SCRIPTS}mister_updater_jtcores.sh"

# ========= CODE STARTS HERE =========
echo "---------------------"
echo "   CLEAN MRA FOLDER  "
echo "---------------------"
echo -e "Delete last updater for resync ... \c"
rm "/media/fat/Scripts/.mister_updater/update.last_successful_run"
echo "done"
echo -e "Rollback .mra ... \c"
    mv "$VERTICAL"/* "$MRA_PATH"
#    mv "$VECTOR"/* "$MRA_PATH"
echo "done"
sleep 1
echo -e "Delete user folder ... \c"
    rm -r $VERTICAL
#    rm -r $VECTOR
echo "done"
sleep 2
echo

echo "---------------------"
echo "UPDATE & INSTALLATION"
echo "---------------------"
sleep 2
echo
$UPDATE
echo

echo "---------------------"
echo "    UPDATE JTCORES   "
echo "---------------------"
sleep 2
$UPDATE_JTCORE
echo

echo "---------------------"
echo "    GET MAME ROMS    "
echo "---------------------"
sleep 2
echo "Building list ..."

LIST=`grep -oh "zip=.*zip" ${MRA_PATH}/*.mra | tr "'" '"' | cut -d '"' -f 2 | tr "|" "\n" | sort | uniq`

echo "Downloading ..."

for p in $LIST ; do
    if [ ! -f "$MAME_FOLDER$p" ]; then
        echo -e "mame/$p ... \c"

        if curl --location --head --fail -k --silent "$MAME_URL${p}" >/dev/null; then
            echo "downloading"
            wget "$MAME_URL${p}" -t 3 --show-progress -q --no-check-certificate -nc -c -P $MAME_FOLDER
        else
            echo "not found"
        fi

    fi
    if [ ! -f "$HBMAME_FOLDER$p" ]; then
        echo -e "hbmame/$p ... \c"

        if curl --location --head --fail -k --silent "$HBMAME_URL${p}" >/dev/null; then
            echo "downloading"
            wget "$HBMAME_URL${p}" -t 3 --show-progress -q --no-check-certificate -nc -c -P $HBMAME_FOLDER
        else
            echo "not found"
        fi
    fi
done
echo 
echo "Done !"
echo

echo "---------------------"
echo "  MOVE VERTICAL ROMS "
echo "---------------------"
echo 
sleep 2

echo -e "Vertical (visible)... \c"
    mkdir -p ${MRA_PATH}"/_Vertical"
    echo "done"
#echo -e "Vector (hidden)... \c"
#    mkdir -p ${MRA_PATH}"/Vector"
#    echo "done"
sleep 2
echo
echo "Building list..."
sleep 1
LIST_TATE=`grep -oh ".*mra" ${INPUT_TATE}`
echo "Prepare for move..."
sleep 2

for p in $LIST_TATE ; do
        echo -e "mra/$p ... \c"
        mv ${MRA_PATH}/"$p" "$VERTICAL"  
        echo "moved"
done

#LIST_VECTOR=`grep -oh ".*mra" ${INPUT_VECTOR}`

#for p in $LIST_VECTOR ; do
#       echo -e "mra/$p ... \c"
#       mv ${MRA_PATH}/"$p" "$VECTOR"  
#       echo "moved"
#done
echo
echo "     -\_(O_o)_/-    "
echo "---------------------"
echo "    READY TO PLAY    "
echo "---------------------"
echo
exit 0

