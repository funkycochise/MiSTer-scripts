# CLM_scripts

Scrips to compile the latest MiSTer source with the ability to change or remove the logo. 
  
You can see the script in action on my youtube channel: *(detailed version)*
https://youtu.be/L4d5K-uX-3M  

**Requierement:**
* Install the GCC, G++ cross compilers and support programs by typing:  
  `sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev`  
  `sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf` 
    
* pv - monitor the progress of data through a pipe  
  `sudo apt-get install pv`  
    
* git - is a web-hosting and software development management service   
  `sudo apt-get install git`  
  
* Download updater:  
`wget -q -t 3 --show-progress -O $HOME/updater_clm.sh https://github.com/nakuakaben/MiSTer-scripts/raw/master/updater_clm.sh &&  chmod +x $HOME/updater_clm.sh`
  
* Run script  
  `./updater_clm.sh`  
 
**TIPS:**  
  * mylogo.png:  
    if you want to make your own logo, rename your creation in mylogo.png  
  * nologo.png:  
    it is much easier to use nologo and to integrate one into the creation of your each wallpapers.  
 
 Enjoy :)

