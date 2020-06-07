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

# Copyright 2020-2021 "nakuakaben"

# You can download the latest version of this script from:
# https://github.com/nakuakaben/MiSTer-scripts

# Version 1.1   - 2020-06-04 - new layout and some minor fixes
# Version 1.0   - 2020-06-03 - First commit

BASE_PATH="$HOME"
MISTER_PATH="${BASE_PATH}/MiSTer/"

# logo
COLOR_LOGO="color.png"
JAPAN_LOGO="japan.png"
NO_LOGO="nologo.png"
MY_LOGO="mylogo.png"


# ========= OPTIONS ==================
URL="https://github.com"
SCRIPT_URL="${URL}/nakuakaben/MiSTer-scripts/blob/master/clm_script.sh"
MISTER_URL="${URL}/MiSTer-devel/"
CLM_VERSION:"1.1"

# code start here
clear
echo -e "Change logo mister $CLM_VERSION"

echo -e "\033[1;33m Do you want to delete the Main_MiSter directory and/or the MiSTer file ? \033[0m \n"

function yesfile {
        echo -e "\033[1;31m Delete old MiSTer file... \033[0m \c" 
            rm -f "${MISTER_PATH}MiSTer"
        echo -e "done \n"
}
function both {
        echo -e "\033[1;31m Delete old folder Main_MiSter and MiSTer file... \033[0m \c" 
            rm -rf "${MISTER_PATH}Main_MiSter/"
            rm -f "${MISTER_PATH}MiSTer"
        echo -e "done \n"
}

PS3='Please enter your choice: '
options=("yes (file)" "both")
select opt in "${options[@]}"
do
    case $opt in
        "yes (file)")
            echo -e "\033[1;32m You choice is\033[0m \033[1;37m....$opt\033[0m"
            yesfile 
            break
            ;;
        "both")
            echo -e "\033[1;32m You choice is\033[0m \033[1;37m....$opt\033[0m"
            both
            break
            ;;
        *) echo -e "\033[1;31m Lost ?\033[0m, please select: \n 1) yes \n 2) no \n 3) next";;
        
    esac
done
 
#Git

echo -e "\n\033[1;33m Do you want to get the source from Github ? \033[0m \n https://github.com/MiSTer-devel/ \n"

function clone {
        cd "$MISTER_PATH"
        git clone "${MISTER_URL}Main_MiSter.git"
}
function update {
        cd "$MISTER_PATH"
        git pull "${MISTER_URL}Main_MiSter.git"
}

PS3='Please enter your choice: '
options=("Clone" "Update" "Next")
select opt in "${options[@]}"
do
    case $opt in
        "Clone")
            clone 
            break
            ;;
        "Update")
            echo -e "\033[1;31m Not yet implemented.\033[0m\n" 
            ;;
        "Next")
            break
            ;;
        *) echo -e "\033[1;31m Lost ?\033[0m, please select: \n 1) Clone \n 2) Update \n 3) Next step";;
    esac
done
 
#logo

echo -e "\n\033[1;33m Do you want to change the logo displayed on the screen ? \033[0m \n"
function color {
        echo -e "\033[1;32m The\033[0m \033[1;37m$opt\033[0m \033[1;32mfile will replace\033[0m \033[1;37mlogo.png\033[0m"
        cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"  
        echo ""  
}
function japan {
        echo -e "\033[1;32m The\033[0m \033[1;37m$opt\033[0m \033[1;32mfile will replace\033[0m \033[1;37mlogo.png\033[0m"
        cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"   
        echo "" 
}
function nologo {
        echo -e "\033[1;32m The\033[0m \033[1;37m$opt\033[0m \033[1;32mfile will replace\033[0m \033[1;37mlogo.png\033[0m"
        cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"     
        echo ""
}
function mylogo {
        echo -e "\033[1;32m The\033[0m \033[1;37m$opt\033[0m \033[1;32mfile will replace\033[0m \033[1;37mlogo.png\033[0m"
        cp -v "${MISTER_PATH}$opt" "${MISTER_PATH}Main_MiSter/logo.png"     
        echo ""
}

PS3='Please enter your choice: '
options=("$COLOR_LOGO" "$JAPAN_LOGO" "$NO_LOGO" "$MY_LOGO"  "Keep")
select opt in "${options[@]}"
do
    case $opt in
        "$COLOR_LOGO")
            color 
            break
            ;;
        "$JAPAN_LOGO")
            japan
            break
            ;;
        "$NO_LOGO")
            nologo
            break
            ;;
        "$MY_LOGO")
            mylogo
            break
            ;;
        "Keep")
            break
            ;;
        *) echo -e "\033[1;31m Lost ?\033[0m, please select: \n 1) color \n 2) japan \n 3) nologo \n 4) mylogo \n 5) keep \n";;
    esac
done

echo -en "\n\033[1;33m Preparing the directory for compilation\033[0m"; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; echo -n "."; sleep 0.05; sleep 0.05; echo -n "."; sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n ".";sleep 0.05; echo -n "."; echo -n "]";
echo ""
function yes {
        echo -e "\n\033[1;32m Compilation of the MiSTer file in progress...\033[0m\n Estimated waiting time is about 1 minute.\n"
        cd "${MISTER_PATH}Main_MiSter/" && make -i | pv -tr >make.tmp
}

PS3='Please enter your choice: '
options=("Yes" "Skip" )
select opt in "${options[@]}"
do
    case $opt in
        "Yes")
            yes 
            break
            ;;
        "Skip")
            echo "you chose choice $REPLY which is $opt"
            break
            ;;
        *) echo -e "\033[1;31m Lost ?\033[0m, please select: \n 1) silent \n 2) verbose \n 3) no \n 4) next";;
    esac
done
echo "" 
    echo -e "\033[1;32mCopy MiSTer file on ${MISTER_PATH} \033[0m"
        cp -v "${MISTER_PATH}Main_MiSter/MiSTer" ${MISTER_PATH}  
echo ""

echo -e "\033[1;37m                          -\_(O_o)_/-                        \033[0m"
echo -e "\033[1;36m-------------------------------------------------------------\033[0m"
echo -e "\033[1;37m     You can copy file ${MISTER_PATH}MiSTer on your FPGA     \033[0m"
echo -e "\033[1;36m-------------------------------------------------------------\033[0m\n"
exit 0
