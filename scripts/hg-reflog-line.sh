#/usr/bin/env sh
hg reflog --limit 20 | tail -n +2 | cut -f 1 -d ' ' | tr '\n' '|' | sed 's/.$//'
