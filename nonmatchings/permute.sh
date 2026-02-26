#!/usr/bin/env bash
PERM="../test/decomp-permuter"
FILE="$1"
[[ $FILE != *.c ]] && FILE="${FILE}.c"
python "$PERM/import.py" "src/melee/$FILE" --function "$2"
python "$PERM/permuter.py" "nonmatchings/$2/" -j64
