#!/bin/bash

green=$(tput setaf 2)
reset=$(tput sgr0)

cols=$(tput cols)

chars=(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)

while true; do
    for (( i=0; i<$cols; i++ )); do
        rand=${chars[$RANDOM % ${#chars[@]}]}
        printf "${green}%s${reset}" "$rand"
    done
    echo ""
    sleep 0.05
done

