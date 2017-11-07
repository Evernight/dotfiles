#/usr/bin/env sh

# Based on
# http://unix.stackexchange.com/questions/243284/colorize-filenames-based-on-status-for-git-diff-name-status

while read i;
do
    if  [[ ${i:0:1} == "M" ]] #grep -q "^M" <<< "$i"
    then printf "\e[33m ${i:0:1}\e[0m ${i:2}\n"
    elif [[ ${i:0:1} == "D" ]] #grep -q "^D" <<< "$i"
    then printf "\e[31m ${i:0:1}\e[0m ${i:2}\n"
    elif [[ ${i:0:1} == "A" ]] #grep -q "^A" <<< "$i"
    then printf "\e[32m ${i:0:1}\e[0m ${i:2}\n"
    elif [[ ${i:0:1} == "?" ]] #grep -q "^A" <<< "$i"
    then printf "\e[34m ${i:0:1}\e[0m ${i:2}\n"
    else printf "$i\n"
    fi
done

