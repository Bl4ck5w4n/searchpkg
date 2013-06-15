#!/bin/bash
# Filter/List all packages from Kali 
# Author: Bl4ck5w4n
# Mail: bl4ck5w4n5@gmail.com
# Blog: http://bl4ck5w4n.blogspot.com

title(){
 echo -e '\033[1;31m--------------------------------------\033[1;m'
 echo -e '         Search Kali PAKAGES                            '
 echo -e '\033[1;31m--------------------------------------\033[1;m'
 
}

terminate(){
  echo -e '\nDont forget to visit \033[1;37mhttp://bl4ck5w4n.blogspot.com\033[1;m for more tools and tutorials\n'
	
	
}

main(){
		title
		echo -e 'List all Packages [l]' 
		
		echo -e 'Filter Packages [<filter>]'
		echo -e 'Quit [q]'
		echo -n -e '\n\n> '
		read choice
		if [ "$choice" == "l" ]; then
			dpkg-query -W -f '\n ${package} - ${version} : ${description} ${maintainer}\n' | grep -i 'kali'
			echo -e -n '\n[ENTER] return to menu'
			read
			main
		
		elif [ "$choice" == "q" ] || [ "$choice" == "" ]; then
			terminate
			exit 1
		
		else
			dpkg-query -W -f '\n ${package} - ${version} : ${description} ${maintainer}\n' | grep -i 'kali' | grep -i $choice
			echo -e -n '\n[ENTER] return to menu'
			read 
			main
		fi
}

main

