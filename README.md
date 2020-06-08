# CLM_scripts

Scrips to compile the latest MiSTer source with the ability to change or remove the logo. 
  
You can see the script in action here: *(detailed version)*
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
    if you want to make your own logo, rename your creation in `$HOME/MiSTer/mylogo.png`  
  * nologo.png:  
    it is much easier to use nologo and to integrate one into the creation of your each wallpapers.  
 
## Desktop Linux on DE10_NANO  

https://github.com/MiSTer-devel/Main_MiSTer/wiki/Desktop-Linux  
  
You can see the script in action here: *(LXDE on MiSTer FPGA)*
https://www.youtube.com/watch?v=-VekW3cHk_s

Also tested on the LXDE for MisterFPGA and it works too.  
If you want to compile from your Mister with LXDE, the MiSTer file will be updated directly on the SD Card.   

Launch package updates and install curl, git, pv  
  `apt update && apt install -y curl pv git`

## Using a cross compiler on a Linux system  
*source: https://github.com/MiSTer-devel/Main_MiSTer/wiki/ARM-cross-compiling#using-a-cross-compiler-on-a-linux-system*  
  
Change directory to /opt/ and download the binaries  
`cd /opt/`  
  
`wget -c https://releases.linaro.org/components/toolchain/binaries/6.5-2018.12/arm-linux-gnueabihf/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz`  

Unpack *(it takes a few minutes on DE10_NANO - go out for coffee and even walk the dog.)*  
`tar xf gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf.tar.xz`   

Add to your path.  
`export CC='/opt/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc'`  

Download and run:  
`wget -q -t 3 --show-progress -O $HOME/updater_clm.sh https://github.com/nakuakaben/MiSTer-scripts/raw/master/updater_clm.sh &&  chmod +x $HOME/updater_clm.sh && $HOME/updater_clm.sh`  

about 4 min to make on DE10_NANO  
reboot your mister.  
  
**For the next updates, you just have to launch the script on LINUX Desktop**

 Enjoy :)

