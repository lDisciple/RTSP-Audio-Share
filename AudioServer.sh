#!/bin/bash
loopbacks=$(aplay -l | grep "Loopback")
if [[ -z  $loopbacks  ]]
then
	modprobe snd-aloop
fi

vlc -I dummy --vlm-conf AudioLAN.cfg --no-video :rtsp-caching=200 :network-caching=300 :file-caching=0 --rtsp-host 0.0.0.0 --rtsp-port 5554