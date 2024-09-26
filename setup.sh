#!/bin/bash

# ID_LIKE=`cat /etc/os-release | grep ID_LIKE | awk -F "=" '{print $2}'`
# if echo "$ID_LIKE" | grep -qwi "arch";then
# 	sudo pacman -Syyu
# 	sudo pacman -S wine wine-mono wine-gecko mingw-w64 git meson nasm glslang
# elif echo "$ID_LIKE" | grep -qwi "debian";then
# 	sudo apt-get update
# 	sudo apt-get wine wine-mono wine-gecko mingw-w64 git meson nasm glslang
# fi

sudo cp `pwd`/animation-starter
 /usr/bin
d_path=`pwd`
mkdir src
cd src

git clone --recursive https://github.com/doitsujin/dxvk.git
git clone --recursive https://codeberg.org/mkrsym1/jadeite.git
cd dxvk
mkdir build
chmod +x package-release.sh
./package-release.sh master `pwd`/build --no-package
cd /home/cz/work/dxvk/build/dxvk-master

export WINEPREFIX=/path/to/wineprefix
cp x64/*.dll $WINEPREFIX/drive_c/windows/system32
cp x32/*.dll $WINEPREFIX/drive_c/windows/syswow64
winecfg

cd $d_path/src/jadeite
chmod +x build.sh
./build.sh
cp -r `pwd`/out `pwd`/jadeite
sudo mkdir /usr/share/Animation-starter
sudo cp `pwd`/jadeite /usr/share/Animation-starter

sudo touch /usr/share/Animation-starter/path
echo "Enter the game main program path(Including program itself):"
read g_path
sudo echo "{$g_path}" > /usr/share/Animation-starter/path

sudo cp `pwd`/animation-starter /usr/bin
