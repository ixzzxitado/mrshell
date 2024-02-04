red="\033[0;49;91m"
green="\033[0;49;92m"
yellow="\033[0;49;93m"
dblue="\033[0;49;94m"
violet="\033[0;49;95m"
blue="\033[0;49;96m"
white="\033[0;49;97m"
math(){
	case "$1" in
		-t | --two)
			so=$(echo "$2+$3" | bc -l)
			su=$(echo "$2-$3" | bc -l)
			mt=$(echo "$2*$3" | bc -l)
			dinx=$(echo "$2/$3" | bc -l)
			echo -e $red "$2 + $3 = $so"
			echo -e $red "$2 - $3 = $su"
			echo -e $red "$2 × $3 = $mt"
			echo -e $red "$2 / $3 = $dinx"
			
		;;
		-r | --tree)
			so=$(echo "$2+$3+$4" | bc -l)
			su=$(echo "$2-$3-$4" | bc -l)
			mt=$(echo "$2*$3*$4" | bc -l)
			dinx=$(echo "$2/$3/$4" | bc -l)
			echo -e $red "$2 + $3 + $4 = $so"
			echo -e $red "$2 - $3 - $4 = $su"
			echo -e $red "$2 × $3 × $4= $mt"
			echo -e $red "$2 / $3 / $4 = $dinx"
		
		;;
		*)
			echo -e "math >usage< \n \n math -t / --two [ NUMBER 1 ] [ NUMBER 2 ] \n \n math -r / --tree [ NUMBER 1 ] [ NUMBER 2 ] [ NUMBER 3 ] \n"
		;;

	esac
}
ham(){ 
	if [ ! -d "/data/data/com.termux/files/home/Hammer" ]
	then
		read -p "Hammer not installed, want install?(y/n)" resp
		if [ "$resp" == "y" ]
		then
			echo -e $dblue "installing..."
			git clone https://github.com/rk1342k/Hammer
			mv "Hammer" "/data/data/com.termux/files/home"
			echo -e $green "Operation Finished!"
		else
			echo -e $violet "bye!"
		fi
	else
		cd "/data/data/com.termux/files/home/Hammer" ; python hammer.py -s "$1" -p "$2" -t "$3"

	fi
				
				
				
				

}
sql(){
        if [ ! -d "/data/data/com.termux/files/home/sqlmap" ]
        then
                read -p "Sqlmap not installed, want install?(y/n)" resp
                if [ "$resp" == "y" ]
                then
                        echo -e $dblue "installing..."
                        git clone https://github.com/sqlmapproject/sqlmap
                        mv "sqlmap" "/data/data/com.termux/files/home"
                        echo -e $green "Operation Finished!"
                else
                        echo -e $violet "bye!"
                fi
        else
                cd "/data/data/com.termux/files/home/sqlmap" ; python sqlmap.py -u "$1" --dbs

        fi

}
search(){
        if [ ! -d "/data/data/com.termux/files/home/sherlock" ]
        then
                read -p "Sherlock not installed, want install?(y/n)" resp
                if [ "$resp" == "y" ]
                then
                        echo -e $dblue "installing..."
                        git clone https://github.com/sherlock-project/sherlock
                        mv "sherlock" "/data/data/com.termux/files/home"
			sed -i '12s/^/#/' "/data/data/com.termux/files/home/sherlock/sherlock/sherlock.py"
                        echo -e $green "Operation Finished!"
                else
                        echo -e $violet "bye!"
                fi
        else
                cd "/data/data/com.termux/files/home/sherlock/sherlock" ; python sherlock.py "$1"

        fi

}

psh(){
	if [ ! -d "/data/data/com.termux/files/home/zphisher" ]
	then
		read -p "Zphisher not installed, want install?(y/n)" resp
		if [ "$resp" == "y" ]
		then
			echo -e $dblue "installing..."
			git clone https://github.com/htr-tech/zphisher
			mv "zphisher" "/data/data/com.termux/files/home"
			echo -e $green "Operation Finished!"
		else
			echo -e $violet "bye!"
		fi
	else
        
		cd "/data/data/com.termux/files/home/zphisher" ; bash zphisher.sh

	fi

}

fsoc(){
        if [ ! -d "/data/data/com.termux/files/home/fsociety" ]
        then
                read -p "Fsociety not installed, want install?(y/n)" resp
                if [ "$resp" == "y" ]
                then
                        echo -e $dblue "installing..."
                        git clone https://github.com/Manisso/fsociety
                        mv "fsociety" "/data/data/com.termux/files/home"
                        echo -e $green "Operation Finished!"
                else
                        echo -e $violet "bye!"
                fi
        else

                cd "/data/data/com.termux/files/home/fsociety" ; python2 fsociety.py

        fi

}
killwf(){
	echo -e "\033[7;49;91m [ ! ] \033[m \033[4;49;93m This function will not break wifi password with an connection and brute force!\033[m"
	sleep 1
	echo ""
	echo -e "\033[7;49;91m [ ! ] \033[m \033[4;49;93m That will just crate an list with the possible combinations!\033[m"
	case "$1" in
		-p | --phonenumber)
			nohup seq 111111111 1 999999999 >> "$2.txt" &
			echo -e $violet "Use > jobs < to see process in background!"
			
		;;
		-n | --minimum)
			nohup seq 10000000 1 99999999 >> "$2.txt"
			echo -e $violet "Use > jobs < to see process in background!"
		;;
		-m | --max)
			sleep 1
			nohup seq 1000000000000000000000000000000000000000000000000000000000000000 1111 9999999999999999999999999999999999999999999999999999999999999999 >> "$2.txt" &
			sleep 1
			echo -e $violet "Use > jobs < to see process in background!"
		;;
		-b | --birthday)
			request_limit="0"
			while [ "$request_limit" -lt "$2" -o "$request_limit" -gt "$2" ]
			do
				day=$(echo $((1 + SRANDOM % 31)))
				mounth=$(echo $((1 + SRANDOM % 12)))
				year=$(echo $((1300 + SRANDOM % 2024)))
				var=$(echo "$day$mounth$year")
				echo "$var" >> "$3.txt"
				request_limit=$((request_limit+1))
				echo -e $yellow "Senha $request_limit Gerada"
			done
			echo -e $red "MAXIMUM PASSWORDS REACHED!!!"
			sleep 1
			echo -e $violet "Passwords Saved In $3.txt"
		;;
		*)
			echo -e $blue "killwf(kill wifi) > usage < \n \n killwf [ PARAMETER ] [ LOG NAME ] \n \n -b / --birthday [ PASSW LIMIT ] [ ARCHIVE NAME ] \n  -m / --max\n  -n / --minimum\n  -p / --phonenumber \n "
		;;
	esac

}

checkn(){
	cd "/data/data/com.termux/files/home" ; python numberchecker.py
	
}
antcrk(){
	cd "/data/data/com.termux/files/home" ; python anticracker
}
bsms(){
        if [ ! -d "/data/data/com.termux/files/home/SETSMS" ]
        then
                read -p "SETSMS not installed, want install?(y/n)" resp
                if [ "$resp" == "y" ]
                then
                        echo -e $dblue "installing..."
                        git clone https://github.com/Darkmux/SETSMS
                        mv "SETSMS" "/data/data/com.termux/files/home"
                        echo -e $green "Operation Finished!"
                else
                        echo -e $violet "bye!"
                fi
        else
                cd "/data/data/com.termux/files/home/SETSMS" ; bash SETSMS.sh

        fi

}
