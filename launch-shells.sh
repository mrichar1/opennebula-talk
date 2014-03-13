#!/bin/bash

if ! ssh-add -l >/dev/null; then
  ssh-add
fi

./shellb 4201 w3290 &
PID1=$!
./shellb 4202 w3290 &
PID2=$!
./shellb 4203 w3295 &
PID3=$!
./shellb 4204 w4017 &
PID4=$!
./shellb 4205 nx.see.ed.ac.uk &
PID5=$!
ssh -N nx.see.ed.ac.uk -L8888:w3290.see.ed.ac.uk:443


kill $PID1
kill $PID2
kill $PID3
kill $PID4
kill $PID5
