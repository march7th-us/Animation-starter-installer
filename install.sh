#!/bin/bash

ID_LIKE=`cat /etc/os-release | grep ID_LIKE | awk -F "=" '{print $2}'`
if echo "$ID_LIKE" | grep -qwi "arch";then
	sudo pacman -Syyu
	sudo pacman -S wine wine-mono wine-gecko mingw-w64 git meson nasm glslang
elif echo "$ID_LIKE" | grep -qwi "debian";then
	sudo apt-get update
	sudo apt-get wine wine-mono wine-gecko mingw-w64 git meson nasm glslang
fi
