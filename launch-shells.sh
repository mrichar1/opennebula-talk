#!/bin/bash
ssh-add
./shellb 4201 w3290 &
./shellb 4202 w3290 &
./shellb 4203 w3295 &
./shellb 4204 w4017 &
./shellb 4205 nx.see.ed.ac.uk &
ssh -N nx.see.ed.ac.uk -L8888:w3290.see.ed.ac.uk:443

killall shellinaboxd
