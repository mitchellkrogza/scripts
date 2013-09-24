#!/bin/sh

gpu=$1
num=$(nvidia-settings -q [gpu:${gpu}]/UsedDedicatedGPUMemory -t)
denom=$(nvidia-settings -q [gpu:${gpu}]/TotalDedicatedGPUMemory -t)
percent=$(bc -l <<< "($num/$denom)*100")
printf "%3.0f" $percent
