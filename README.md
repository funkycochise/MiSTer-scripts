# MiSTer-scripts
Various scripts available to users

1) Automated script to change the Mister Logo v1.0.1

I made a little script to automate the integration, change or remove the Mister logo with the latest available sources.
It's certainly a useless and therefore useful gadget :)
I make this script available in its version 1.0.1

My configuration:
I'm on a virtual machine with VM VirtualBox, under the Linux Mint 19.3 Tricia distribution.

Download package and unzip in the user folder:
Content:
* Main_MiSTer.sh
* A MiSTer folder with the different logos
 - color.png , by terminator2k2
 - japan.png , by terminator2k2
 - nologo.png , blank
 - mylogo.png ,  if you want to make your own logo, rename your creation in mylogo.png
* It is in this same directory that will be downloaded the sources to compile.

tips: it is much easier to use nologo and to integrate one into the creation of your each wallpapers.

IMPORTANT:
You can launch the script by double clicking in graphic mode
$ chmod +x Main_MiSTer.sh

Requierement:
"pv - monitor the progress of data through a pipe"
"git - the stupid content tracker"

$ sudo apt install pv git

and 

Install the Cross Compilers, utilities, etc.
Install the GCC, G++ cross compilers and support programs by typing:

$ sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev
$ sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
