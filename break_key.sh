#!/bin/bash
amixer set Capture toggle
OUTPUT="$(amixer get Capture)"

#if [ 0 -e $? ];
#then
#OUTPUT="on"
#else
#OUTPUT="off"
#fi
response="$(echo $OUTPUT | grep -o off)"
if [ -z "$response" ];
then
    resp="on"
else
    resp="off"
fi
#response="$(echo $OUTPUT | grep -o on)"
echo $response
notify-send -u critical "Break key" "microphone is $resp"
