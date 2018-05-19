# FastServer is a shell script which I wrote to save time,
# in CTF's, I find it very handy..!!!
# Feel free to use and edit the code according to your comfort.
# Written by p5yph3r.
# Email:- psypher1918@gmail.com Twitter:- p5yph3r
#
#!/bin/bash
#    .---------- constant part!

RED='\033[0;31m'
yellow='\033[1;33m'
blue='\033[1;34m' 
NC='\033[0m' # No Color

banner(){
	echo -e "${blue}########################################${NC}"
	echo -e "${blue}##	${yellow}   5impl3 5erv3r ${blue}             ## ${NC}"
	echo -e "${blue}##${yellow}Simple Server With python and shell ${blue}## ${NC}"
	echo -e "${blue}##	${yellow}written by :- p5yph3r ${blue}        ##${NC}"
	echo -e "${blue}########################################${NC}"
	echo -e "${RED} The files you want to serve should be in the same directory/folder in which this file is. ${NC}"
}
banner
#echo -e "${blue} SIMPLE SERVER ${NC}"
echo -e "${RED}[+]${yellow} *** MENU ***${NC}"
echo -e "${blue} Press 1 to Start Simple Http Server ${NC}" 
echo -e "${blue} Press 0 to Exit ${NC}"
read des
if [ $des == 1 ]
	then
		echo -e "${yellow} Starting server ${NC}"
		echo -e "${blue} ENTER PORT NUMBER ${NC}"
		read port
		echo -e "${blue} SERVER STARTED ${NC}"
		echo -e "${RED} Current Directory :- ${NC}"
		pwd
		echo -e "${blue} FILes On SERVER :- ${NC}"
		ls -a
		echo -e "${yellow}---------------------------------------------${NC}"
		python -m SimpleHTTPServer $port ;
	   
	else
	   echo "SERVER NOT STARTED"	
fi
