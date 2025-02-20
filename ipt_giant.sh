#!/bin/bash  

# GIANT IPT ASCII ART  
echo -e "\033[1;31m  
  ██▓███  ▓█████  ▄████▄   ▒█████   ██▀███  
 ▓██░  ██▒▓█   ▀ ▒██▀ ▀█  ▒██▒  ██▒▓██ ▒ ██▒  
 ▓██░ ██▓▒▒███   ▒▓█    ▄ ▒██░  ██▒▓██ ░▄█ ▒  
 ▒██▄█▓▒ ▒▒▓█  ▄ ▒▓▓▄ ▄██▒▒██   ██░▒██▀▀█▄    
 ▒██▒ ░  ░░▒████▒▒ ▓███▀ ░░ ████▓▒░░██▓ ▒██▒  
 ▒▓▒░ ░  ░░░ ▒░ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░  
 ░▒ ░      ░ ░  ░  ░  ▒     ░ ▒ ▒░   ░▒ ░ ▒░  
 ░░          ░   ░        ░ ░ ░ ▒    ░░   ░  
               ░  ░░ ░          ░ ░     ░  
                   ░                          
\033[0m"  

while true; do  
  echo -e "\n\033[1;34m[IPT-CARDINATOR]\033[0m"  
  echo "1. Generate PlayStore Cards"  
  echo "2. Brute BIN Databases"  
  echo "3. Exit"  
  read -p "> " choice  

  case $choice in  
    1)  
      python3 card_engine.py  
      ;;  
    2)  
      echo "[!] Scraping Visa/MasterCard BINs..."  
      curl -s http://binlist.net/csv/playstore_bins.csv > bins.csv  
      ;;  
    3)  
      exit  
      ;;  
  esac  
done  
