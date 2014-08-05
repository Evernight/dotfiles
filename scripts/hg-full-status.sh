#/usr/bin/bash

printf "\e[1m====== Log ====== \e[0m\n"

HG_TEMPLATE='\x1B[38;5;215m{node|short}\x1B[0m\t \x1B[38;5;221m{join(bookmarks,", ")}\x1B[0m \n\x1B[38;5;240m{date|isodate}\x1B[0m\t{desc}'

if [[ -n $(hg log -r 'children(.)') ]]; then
	printf "\x1B[1;44mch(.)\x1B[0m\t"
	hg log -r 'children(.)' --template "${HG_TEMPLATE}"
fi

printf "\x1B[1;44mHEAD\x1B[0m\t"
hg log -r . --template "${HG_TEMPLATE}"
printf "\x1B[1;44mPARENT\x1B[0m\t"
hg log -r .^ --template "${HG_TEMPLATE}"

printf "\n"
printf "\e[1m===== Status ==== \e[0m\n"
hg status