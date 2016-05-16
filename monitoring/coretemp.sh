#!/bin/sh
core=$1
temp=$(sensors | grep "Core ${core}" | cut -c18,21)
printf "$temp"
