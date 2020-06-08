#!/bin/bash

# variable
URL="https://github.com"
SCRIPT_SH="updater_clm.sh"
SCRIPT_URL="$URL/nakuakaben/MiSTer-scripts/raw/master/$SCRIPT_SH"

# code start here
clear

echo "Downloading..."
	wget -q -t 3 --output-file=/tmp/wget-log --show-progress -O /tmp/$SCRIPT_SH $SCRIPT_URL # downloading to output /tmp
	chmod +x /tmp/$SCRIPT_SH # make executable script
	/tmp/$SCRIPT_SH # run script 
	rm -f /tmp/$SCRIPT_SH # clean file in /tmp at the end 
	
echo "Done!"

# Fill in the IP address of your FPGA in the variable $FPGA_IP and uncomment the lines if you want to copy with SCP
FPGA_IP="192.168.0.69" # change with by your fpga IP
#echo -e "\n  Update... \c"
#    echo "Copy new MiSTer file by SCP password: 1"
#    scp $HOME/MiSTer/MiSTer root@"$FPGA_IP:/media/fat
#echo "done."
#sleep 3 

exit 0
