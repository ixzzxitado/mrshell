# colors
red="\033[0;49;91m"
green="\033[0;49;92m"
yellow="\033[0;49;93m"
dblue="\033[0;49;94m"
violet="\033[0;49;95m"
blue="\033[0;49;96m"
white="\033[0;49;97m"
# script by @ixzzxitado on github.com!1!1!1!1111!
while :
do
	clear
	read -p "Do you want install this tool in your termux?(y/n) " rsp
	if [ "$rsp" == "y" ]
	then
		msg1=$(echo -e $red "Thx for using my script....Now im gonna install requirements...")
		for ((i=0; i < ${#msg1}; i++)); do
			echo -n "${msg1:$i:1}"
			sleep 0.1
		
		done
		sleep 2
		clear
		apt install git
		apt install python
		apt install python2
		pip install phonenumbers
		pip install lolcat
		pip install wget
		pip install os
		pip install csv
		pip install requests
		pip install torrequest
		pip install colorama
		pip install platform
		pip install signal
		pip install sys
		pip install random
		pip install threading
		pip install socket
		pip install urllib
		pip install logging
		pip install queue
		pip install bdb
		pip install glob
		pip install inspect
		pip install json
		pip install re
		pip install shutil
		pip install tempfile
		pip install traceback
		pip install warnings
		pip install phonenumbers
		msg=$(echo -e $red "Moving mtlib to /data/data/com.termux/files/usr/etc/bash.bashrc")
		for ((i=0; i < ${#msg}; i++)); do
			echo -n "${msg:i:1}"
			sleep 0.1
		done
		sleep 1
		echo -e "source mtlib.sh\n" >> "/data/data/com.termux/files/usr/etc/bash.bashrc"
		mv "mtlib.sh" "/data/data/com.termux/files/home"
		chmod +x *
		sleep 1
		mv "nextpower1" "/data/data/com.termux/files/bin"
		mv "neofetch" "/data/data/com.termux/files/usr/bin"
		mv "banner.txt" "/data/data/com.termux/files/home"
		mv "shmenu" "/data/data/com.termux/files/usr/bin"
		echo -e "clear ; neofetch ; cat banner.txt ; nextpower1\n" >> "/data/data/com.termux/files/usr/etc/bash.bashrc"
		mv "numberchecker.py" "/data/data/com.termux/files/home"
		echo -e $green ">>>mtlib moved! please restart your termux!"
		break
	else
		echo -e $violet "Thank you anyway :)"
		break
	fi
done
