#!/bin/bash 
img="/tmp/i3lock.png"
icon="/home/aaron/.config/i3/lockIcon.png"
scrot $img
convert $img -scale 10% -scale 1000% -brightness-contrast -20x-20 $img
convert $img $icon -gravity center -composite $img
i3lock -u -i $img
