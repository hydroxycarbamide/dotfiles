#!/bin/sh

grim -g "$(slurp)" /tmp/grim.png && tesseract -l eng+jpn /tmp/grim.png - | wl-copy && wl-paste | xargs -I{} notify-send "Tesseract" "Copied '{}'"
