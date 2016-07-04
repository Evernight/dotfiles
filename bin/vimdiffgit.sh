#!/bin/bash

REV=$1
FILE=$2
REVISION_FILE=`mktemp`
git show $REV:./$FILE > $REVISION_FILE
vimdiff $FILE $REVISION_FILE
rm $REVISION_FILE
