#!/bin/bash  
pkg update -y  
pkg install python figlet toilet -y  
pip install luhn requests  
termux-setup-storage  
chmod +x ipt_giant.sh  
echo -e "\n\033[1;32mRUN:\033[0m ./ipt_giant.sh"  
