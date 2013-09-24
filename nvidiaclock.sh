#!/bin/sh
gpu=$1
minmax=($(nvidia-settings -q [gpu:${gpu}]/GPUCurrentClockFreqs -t | tr "," "\n"))
percent=$(bc -l <<< "${minmax[0]}/${minmax[1]}*100")
printf "%3.0f" $percent
