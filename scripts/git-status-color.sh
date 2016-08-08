#/usr/bin/env sh

# http://unix.stackexchange.com/questions/243284/colorize-filenames-based-on-status-for-git-diff-name-status

while read i;
do
    if  [[ ${i:0:1} == "M" ]] #grep -q "^M" <<< "$i"
    then echo -e "\e[33m $i \e[0m"
    elif [[ ${i:0:1} == "D" ]] #grep -q "^D" <<< "$i"
    then echo -e "\e[31m $i \e[0m"
    elif [[ ${i:0:1} == "A" ]] #grep -q "^A" <<< "$i"
    then echo -e "\e[32m $i \e[0m"
    else echo -e "$i"
    fi
done

