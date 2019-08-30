#/usr/bin/env sh
reflog_line=$(hg reflog --limit 40 | tail -n +2 | sed 's/,/ /' | cut -f 1 -d ' ' | tr '\n' '|' | sed 's/.$//')
( printf "\n\033[1m[ SLOG ]\n\n" && hg slog --hidden --rev "$reflog_line|master~10::master|.~3::." --template "\033[0;31m{node|short}\033[0m -\033[0;33m{branches}{bookmarks}{tags}\033[0m {desc|firstline}\n\033[0;32m{date|age} ({date|isodate})\033[0;34m <{author|person}>\n\n" ) | less
