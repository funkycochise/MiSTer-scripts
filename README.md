# MiSTer-scripts
Various scripts available to users

CLM_scripts (Change Logo Mister) v1.0.1
---  
I made a little script to automate the integration, change or remove the Mister logo with the latest available sources.  
It's certainly a useless and therefore useful gadget :)  


My configuration:
I'm on a virtual machine with VM VirtualBox, under the Linux Mint 19.3 Tricia distribution.   
  
You can see the script in action on my youtube channel:  
https://youtu.be/L4d5K-uX-3M

Download package and unzip in the user folder:   
  
* clm_script.sh  ; *main script*  
* updater_clm.sh ; *updater for main script*  
* Folder with the different logos, thank terminator2k2 for color and japan  
 ![alt COLOR](https://github.com/nakuakaben/MiSTer-scripts/blob/master/MiSTer/color.png "COLOR")  
 ![alt JAPAN](https://github.com/nakuakaben/MiSTer-scripts/blob/master/MiSTer/japan.png "JAPAN")
 - nologo.png , *blank*
 - mylogo.png ,  *if you want to make your own logo, rename your creation in mylogo.png*

  *Tips: it is much easier to use nologo and to integrate one into the creation of your each wallpapers.*

**IMPORTANT**:  
Give the execution rights to the script  
  `chmod +x updater_clm.sh`  
  
Run script  
  `./updater_clm.sh`  
 
**Requierement:**
* Install the GCC, G++ cross compilers and support programs by typing:  
  `sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev`  
  `sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf` 
    
* pv - monitor the progress of data through a pipe  
  `sudo apt-get install pv`  
    
* git - is a web-hosting and software development management service   
  `sudo apt-get install git`  
 
