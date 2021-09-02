bo-ch() {
	cd ~/Unpack-Repack/Maruf/Unpack
	if [ -e boot.img ];then
	printf "\n\033[1;93m Found file ....\n\n Now unpacking....\n\n"
	su -c ./.unpack*
	else
	printf "\n\033[1;91m Not found\n\n"
	fi
	}
	re-ch() {
	cd ~/Unpack-Repack/Maruf/Unpack
	if [ -e recovery.img ];then
	printf "\n\033[1;93m Found file ....\n\n Now unpacking....\n\n"
	su -c ./.unpack*
	else
	printf "\n\033[1;91m Not found\n\n"
	fi
	}
	un-re() {
		cd ~/Unpack-Repack/Maruf/Unpack
		if [ -e ramdisk ];then
		printf "\n\033[1;93m Found ramdisk folder ....\n\n Now repacking....\n\n"
		su -c ./.repack*
		else
		printf "\n\n\033[1;92m First copy\033[0m recovery.img in ~/Unpack-Repack/Maruf/Unpack \033[1;92m and press enter"
		read
		re-ch
		fi
		}
	un-bo() {
		cd ~/Unpack-Repack/Maruf/Unpack
		if [ -e ramdisk ];then
		printf "\n\033[1;93m Found ramdisk folder ....\n\n Now repacking....\n\n"
		su -c ./.repack*
		else
	printf "\n\n\033[1;92m First copy\033[0m boot.img in ~/Unpack-Repack/Maruf/Unpack \033[1;92m and press enter"
	read
	bo-ch
	fi
	}
	
	ban() {
	toilet -f font Unpack
	echo
	printf "\n\033[1;96m \tThis Tool creating by Maruf\n\n"
	printf " My github link :- \033[97m https://github.com/rootedcyber\n"
	}
	unpack-rec() {
		cd ~/Unpack-Repack/Maruf/Unpack
		if [ -e ramdisk ];then
		printf "\033[1;96m Unpacked"
		else
		printf "\033[1;91m Not unpacked"
		fi
		}
		rec=$(unpack-rec)
		unpack-boot() {
		cd ~/Unpack-Repack/Maruf/Unpack
		if [ -e ramdisk ];then
		printf "\033[1;96m Unpacked"
		else
		printf "\033[1;91m Not unpacked"
		fi
		}
		boot=$(unpack-boot)
	menu() {
		ban
		printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;92m Unpack-Repack Recovery "
		printf "\033[1;93m [ $rec \033[1;93m ]\n"
		printf "\n\033[1;91m[\033[0m2\033[1;91m]\033[1;92m Unpack-Repack Boot "
		printf "\033[1;93m [ $boot \033[1;93m ]\n"
		printf "\n\033[1;91m[\033[0m3\033[1;91m]\033[1;92m Reboot into Bootloader\n"
		printf "\n\033[1;91m[\033[0m4\033[1;91m]\033[1;92m Reboot into Recovery\n"
		printf "\n\033[1;91m[\033[0m5\033[1;91m]\033[1;92m Reboot\n"
		printf "\n\033[1;91m[\033[0m6\033[1;91m]\033[1;92m Power off\n"
		printf "\n\033[1;91m[\033[0m7\033[1;91m]\033[1;92m Exit \n\n\n"
		echo -e -n "\033[1;93m Unpack\033[0m -->> "
		read a
		case $a in
		1) un-re ;;
		2) un-bo ;;
		3)su -c reboot bootloader ;;
		4)su -c reboot recovery ;;
		5)su -c reboot ;;
		6)su -c reboot -p ;;
		7)exit ;;
		*)menu ;;
		esac
		}
		menu