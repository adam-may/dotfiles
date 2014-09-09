#!/bin/sh

stop_hdmi() {

	cp /etc/bumblebee/bumblebee.conf.orig /etc/bumblebee/bumblebee.conf
	cp /etc/bumblebee/xorg.conf.nvidia.orig /etc/bumblebee/xorg.conf.nvidia
	#export DISPLAY=:8 LD_LIBRARY_PATH=/usr/lib/nvidia-current:$LD_LIBRARY_PATH
	sudo kill `cat /tmp/.X8-lock`
	service bumblebeed restart
	#optirun true
	killall synergyc
	killall synergys
}

start_hdmi() {
	cp /etc/bumblebee/bumblebee.conf.hdmi /etc/bumblebee/bumblebee.conf
	cp /etc/bumblebee/xorg.conf.nvidia.hdmi /etc/bumblebee/xorg.conf.nvidia
	export DISPLAY=:8 LD_LIBRARY_PATH=/usr/lib/nvidia-current:$LD_LIBRARY_PATH
	service bumblebeed stop
	sleep 1
	service bumblebeed start
	sleep 1
	optirun true

	#DISPLAY=:8 metacity --replace &
	xfwm4 --replace --compositor=on --display=:8 --daemon

	synergys --config /etc/bumblebee/synergy.conf -a 127.0.0.1 --display :0 -n main &

	DISPLAY=:8 synergyc -n child --display :8 127.0.0.1

    DISPLAY=:8.0 xfce4-terminal &
}

if test -f /tmp/.X8-lock; then
	echo "le port HDMI doit être activé, déactivation...."
	stop_hdmi
else
	echo "le port hdmi doit être désactivé, activation..."
	start_hdmi
fi


