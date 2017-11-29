#!/usr/bin/env sh
vimdiff -d -c "wincmd J" $(cygpath -i $1) $(cygpath -i $2) $(cygpath -i $3) $(cygpath -i $4)
