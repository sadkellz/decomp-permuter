#!/usr/bin/env bash
PERM="../decomp-permuter"
FILE="$1"
[[ $FILE != *.c ]] && FILE="${FILE}.c"
"$PERM/import.py" "meleeDecomp/src/melee/$FILE" --function "$2"
"$PERM/permuter.py" "../meleeDecomp/nonmatchings/$2/" -j64
