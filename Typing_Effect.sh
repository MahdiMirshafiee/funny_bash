#!/bin/bash
clear
green=$(tput setaf 2)
reset=$(tput sgr0)

text=$1

for ((i=0; i<${#text}; i++)); do
    char="${text:$i:1}"

    echo -ne "${green}${char}${reset}"

    sleep $(awk -v min=0.02 -v max=0.08 'BEGIN{srand(); print min+rand()*(max-min)}')

    # sound click for linux
    # echo -ne '\007'
done
echo
