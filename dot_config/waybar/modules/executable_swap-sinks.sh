#!/bin/bash

newSink=""

Headphones="alsa_output.usb-Blue_Microphones_Yeti_Stereo_Microphone_797_2018_09_06_94890-00.analog-stereo" #Change this device's to headphone pactl name
Speaker="alsa_output.pci-0000_0b_00.6.analog-stereo" #Change this to device's speaker pactl name
currentSink=$(pactl info | sed -n 's/Default Sink: //p')

if [ "$Speaker" = "$currentSink" ]; then
    newSink="$Headphones"
else
    newSink="$Speaker"
fi

pactl set-default-sink "$newSink"

sleep 0.1
description=$(pactl list sinks | awk '/State: RUNNING/{active=1} active && /Description:/{print substr($0, index($0, $2)); exit}')
notify-send -i audio-speakers -u low "Audio Output Changed" "$description"

# pactl list short sink-inputs|while read stream; do
#     streamId=$(echo "$stream"|cut '-d ' -f1)
#     echo "moving stream $streamId"
#     pactl move-sink-input "$streamId" "$newSink"
# done
