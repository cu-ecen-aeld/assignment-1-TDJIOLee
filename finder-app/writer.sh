#!/bin/sh

if [ $# -ne 2 ]
then
    echo "The arguments should be ./writer.sh [writefile] [writestr]"
    exit 1
fi

FILEPATH=$1
WRITESTR=$2

if [ ! -e $FILEPATH ]
then
    mkdir -p "$(dirname "$FILEPATH")" && touch "$FILEPATH"
    if [ $? -ne 0 ]
    then
        echo "fail to create $FILEPATH"
        exit 1
    fi
fi

echo "$WRITESTR" > $FILEPATH
