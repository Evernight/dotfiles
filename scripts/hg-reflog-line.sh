#/usr/bin/env sh
hg reflog --limit 20 | tail -n +2 | sed 's/,/ /' | cut -f 1 -d ' ' | tr '\n' '|' | sed 's/.$//'
