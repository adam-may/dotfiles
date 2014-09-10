#!/bin/sh

stop_hdmi() {

	sudo cp $HOME/dotfiles/dual\ screen/bumblebee.conf.orig /etc/bumblebee/bumblebee.conf
	sudo cp $HOME/dotfiles/dual\ screen/xorg.conf.nvidia.orig /etc/bumblebee/xorg.conf.nvidia
	sudo kill `cat /tmp/.X8-lock`
	sudo systemctl restart bumblebeed
	killall synergyc
	killall synergys
}

start_hdmi() {
	sudo cp $HOME/dotfiles/dual\ screen/bumblebee.conf.hdmi /etc/bumblebee/bumblebee.conf
	sudo cp $HOME/dotfiles/dual\ screen/xorg.conf.nvidia.hdmi /etc/bumblebee/xorg.conf.nvidia
	export DISPLAY=:8 LD_LIBRARY_PATH=/usr/lib/nvidia:$LD_LIBRARY_PATH
	sudo systemctl stop bumblebeed
	sleep 1
	sudo systemctl start bumblebeed
	sleep 1
	optirun true

	DISPLAY=:8.0 awesome &

	synergys --config $HOME/dotfiles/dual\ screen/synergy.conf -a 127.0.0.1 --display :0 -n main &

	DISPLAY=:8 synergyc -n child --display :8 127.0.0.1

}

if test -f /tmp/.X8-lock; then
	echo "HDMI port is active. Deactivating..."
	stop_hdmi
else
	echo "HDMI port is inactive. Activating..."
	start_hdmi
fi


