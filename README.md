# RTSP-Audio-Share
A small set of scripts to share audio over LAN.

Requires VLC media player and ALSA.

To start the server you need to run 'AudioServer.sh' with root privileges 
(Reason for root: Requires access to modprobe in order to create a loopback device)

In order to connect you can use VLC on the client device to connect to the server or omxplayer if you use a RPi.