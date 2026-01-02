#!/bin/bash

TOOLS_DIR="$HOME/.mytool"
FLAG_FILE="$TOOLS_DIR/.installed"
RESULT="$HOME/results"
install_tools() {
	echo "[+] Installing tools..."
	mkdir -p "$TOOLS_DIR"
	mkdir -p "$RESULT"
	
	sudo apt install git
	sudo apt install nmap
	sudo apt install whatweb
	sudo apt install nikto
	sudo apt install subfinder
	sudo apt install golang-go
	sudo go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
	sudo apt install ffuf
	sudo apt install seclists
	
	touch "$FLAF_FILE"
	echo "[+] Tools installed successfully!"
	}
	if [[ ! -f "FLAG_FILE" ]]; then
		install_tools
	else
		echo " [+] Tools already installed, Skipping..."
		
	fi
	
	GREEN="\e[32m"
RESET="\e[0m"

clear
echo -e "${GREEN}"
cat << "EOF"
██████╗  ██████╗ ██████╗      ██╗ ██████╗ ██╗  ██╗
██╔══██╗██╔═══██╗██╔══██╗     ██║██╔═══██╗╚██╗██╔╝
██████╔╝██║   ██║██║  ██║     ██║██║   ██║ ╚███╔╝ 
██╔══██╗██║   ██║██║  ██║██   ██║██║   ██║ ██╔██╗ 
██████╔╝╚██████╔╝██████╔╝╚█████╔╝╚██████╔╝██╔╝ ██╗
╚═════╝  ╚═════╝ ╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝
       BEST CYBERSECURITY TOOL
EOF
echo -e "${RESET}"

while true; do
echo " Enter the target's domain : (ex: google.com )"
read target

if [[ "$target" == *"/"* ]]; then
	echo "[!] Invalid target . Domain only"
else
	break
fi
done
echo " [+] Target accepted : $target"
echo " [+] Scaning the target..."

whatweb "$target" | tee "$RESULT/whatweb.txt"
nmap "$target" | tee "$RESULT/nmap.txt"
nikto -host "$target" | tee "$RESULT/nikto.txt"
subfinder -d "$target" | tee "$RESULT/subfinder.txt"
