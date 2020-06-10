#!/bin/bash
# Edited by:Neutral Me
# Youtube:Neutral Me

youtube='Neutral Me'
bb="\e[1;5m"
nocolor='\033[0m'
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightred='\033[1;31m'
lightgreen='\033[1;32m'
lightblue='\033[1;34m'
lightpurple='\033[1;35m'
lightcyan='\033[1;36m'
white='\033[1;37m'
d="\e[0m"
version="2.1"
function subscribem(){
	gio open "https://www.youtube.com/channel/UC3rLWL2mIeRHHvwT9ZrgMmA"
	}
function error1(){
	logo
	echo -e "[${cyan}*${d}] Fixing error may take a bit time....."
	sleep 2
	echo -e "Which one do you want??"
	echo -e "${cyan}[1]${d} Kali-Rolling       ${lightblue}*${d}(Default and frequently updated)"
	echo -e "${cyan}[2]${d} Kali-Last-Snapshot ${lightblue}*${d}(Stable and safest) [${green}RECOMMENDED${d}]"
	echo -e "${cyan}[3]${d} Kali-Experimental  ${lightblue}*${d}(Under testing Packages)"
	echo -e "${cyan}[4]${d} Other              ${lightblue}*${d}(Additional tools)"
	echo -e "${cyan}[5]${d} All                ${lightblue}*${d}(May cause slower downloads)"
	echo -e "${cyan}[6]${d} Back"
	read pname
	if [[ "${pname}" = "1" ]];then
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee /etc/apt/sources.list
	elif [[ "${pname}" = "2" ]];then
	echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib" | sudo tee /etc/apt/sources.list
	elif [[ "${pname}" = "3" ]];then
	echo "deb http://http.kali.org/kali kali-experimental main non-free contrib" | sudo tee -a /etc/apt/sources.list
	elif [[ "${pname}" = "4" ]];then
	echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
	elif [[ "${pname}" = "5" ]];then
	echo "deb http://http.kali.org/kali kali-rolling main non-free contrib"
	echo "deb http://http.kali.org/kali kali-last-snapshot main non-free contrib"
	echo "deb http://http.kali.org/kali kali-experimental main non-free contrib"
	echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib"
	elif [[ "${pname}" = "6" ]];then
	menu
	else
	error1
	fi
	echo -e "[${cyan}*${d}] Error is set now lets update it. [${green}INSTANT${d}]"
	sleep 3
	sudo apt-get update
	clear
	logo
	echo -e "[${green}*${d}] Error is fixed"
	sleep 2
	echo -e "[${green}?${d}] Subscribe to Me??[y/n]"
	read
	subscribem
	}
function checkroot(){
	if [[ $EUID != 0 ]]; then
	echo -e "[${white}*${d}]${bb}${red}ERROR${d}: Not ${cyan}root${d}${bb} : YOU MIGHT GET ERROR"
	fi
	sleep 3
	}
function logo(){
	clear
echo -e "${lightred}RRRRRRRRRRRRRRRRR                  BBBBBBBBBBBBBBBBB ${d}                                        ";
echo -e "${lightred}R::::::::::::::::R                 B::::::::::::::::B    ${d}                                    ";
echo -e "${lightred}R::::::RRRRRR:::::R                B::::::BBBBBB:::::B       ${d}                                ";
echo -e "${lightred}RR:::::R     R:::::R               BB:::::B     B:::::B          ${d}                            ";
echo -e "${lightred}  R::::R     R:::::R  ooooooooooo    B::::B     B:::::B   eeeeeeeeeeee       eeeeeeeeeeee    ${d}";
echo -e "${lightred}  R::::R     R:::::Roo:::::::::::oo  B::::B     B:::::B ee::::::::::::ee   ee::::::::::::ee  ${d}";
echo -e "${lightred}  R::::RRRRRR:::::Ro:::::::::::::::o B::::BBBBBB:::::B e::::::eeeee:::::eee::::::eeeee:::::ee${d}";
echo -e "${lightred}  R:::::::::::::RR o:::::ooooo:::::o B:::::::::::::BB e::::::e     e:::::e::::::e     e:::::e${d}";
echo -e "${lightred}  R::::RRRRRR:::::Ro::::o     o::::o B::::BBBBBB:::::Be:::::::eeeee::::::e:::::::eeeee::::::e${d}";
echo -e "${lightred}  R::::R     R:::::o::::o     o::::o B::::B     B:::::e:::::::::::::::::ee:::::::::::::::::e ${d}";
echo -e " ${lightred} R::::R     R:::::o::::o     o::::o B::::B     B:::::e::::::eeeeeeeeeee e::::::eeeeeeeeeee ${d} ";
echo -e " ${lightred} R::::R     R:::::o::::o     o::::o B::::B     B:::::e:::::::e          e:::::::e ${d}          ";
echo -e "${lightred}RR:::::R     R:::::o:::::ooooo:::::BB:::::BBBBBB::::::e::::::::e         e::::::::e    ${d}      ";
echo -e "${lightred}R::::::R     R:::::o:::::::::::::::B:::::::::::::::::B e::::::::eeeeeeee  e::::::::eeeeeeee${d}  ";
echo -e "${lightred}R::::::R     R:::::Roo:::::::::::ooB::::::::::::::::B   ee:::::::::::::e   ee:::::::::::::e  ${d}";
echo -e "${lightred}RRRRRRRR     RRRRRRR  ooooooooooo  BBBBBBBBBBBBBBBBB      eeeeeeeeeeeeee     eeeeeeeeeeeeee${d}";
echo ""
echo -e "                                       BY : ${green}Neutral Me${d}      V${version}"
echo -e "                               ${red}YOUTUBE${d}=>${green}Neutral Me${d}"
}
function installtools(){
	logo
	echo -e "[${cyan}*${d}] ${green}We will be installing following tools.${d}"
	echo -e "${bb} DOWNLOADS WILL BE STORED IN $(pwd)"
	echo -e "[${cyan}*${d}] Lazy Script-----For lazy hackers only."
	sleep 1
	echo -e "[${cyan}*${d}] Airgeddon-------All in one tools (${red}hot${d})."
	sleep 1
	echo -e "[${cyan}*${d}] Geany-----------Best notepad for linux."
	sleep 1
	echo -e "[${cyan}*${d}] Tor-Browser-----Surf Anonymously in web."
	sleep 1
	echo -e "[${cyan}*${d}] Metasploit------Best tool for hackers."
	sleep 1
	echo -e "[${cyan}*${d}] "
	sleep 1
	echo ""
	echo -e "[${cyan}*${d}] Press ${green}ENTER${d} to continue......"
	read enterme
	apt-get install geany
	apt-get install curl
	git-clone https://github.com/arismelachroinos/lscript.git
	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
  git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
  apt-get install torbrowser-launcher
	echo -e "[${green}?${d}] Do you want to subscribe my channel?[y/n]"
	read
	subscribem
	}
function menu(){
	logo
	echo -e "CHOOSE:"
	echo -e "[1] Fix UNABLE TO LOCATE PACKAGE ERROR"
	echo -e "[2] Download SPECIAL TOOLS FOR YOUR OS"
	echo -e "[3] Subscribe NEUTRAL ME"
	read menuchoose
	if [[ "$menuchoose" = "1" ]];then
	error1
	elif [[ "$menuchoose" = "2" ]];then
	installtools
	elif [[ "$menuchoose" = "3" ]];then
	subscribem
	menu
	else
	menu
	fi
	}
checkroot
menu
