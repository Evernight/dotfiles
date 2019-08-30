#/usr/bin/env sh
commits=`hg reflog | tail -n +2 | head -n 500 | sed 's/,/ /' | cut -f 1 -d ' ' | tr '\n' '|' | sed 's/.$//'`
hg log -r "$commits" --template '\033[0;31m{node|short}\033[0m {desc|firstline} \033[0;32m{date|age}\n' | less
