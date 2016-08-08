#/usr/bin/env sh

# Based on
# http://unix.stackexchange.com/questions/243284/colorize-filenames-based-on-status-for-git-diff-name-status

while read i;
do
    if  [[ ${i:0:1} == "M" ]] #grep -q "^M" <<< "$i"
    then echo -e "\e[33m ${i:0:1} \e[0m ${i:2}"
    elif [[ ${i:0:1} == "D" ]] #grep -q "^D" <<< "$i"
    then echo -e "\e[31m ${i:0:1} \e[0m ${i:2}"
    elif [[ ${i:0:1} == "A" ]] #grep -q "^A" <<< "$i"
    then echo -e "\e[32m ${i:0:1} \e[0m ${i:2}"
    else echo -e "$i"
    fi
done

