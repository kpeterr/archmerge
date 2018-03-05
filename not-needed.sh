#!/bin/bash
set -e

#################################################################
###############   These programs do not need me   ###############
#################################################################

sudo pacman -R atom electron geany meld --noconfirm
sudo pacman -R gimp darktable gpick inkscape nomacs peek shotwell simple-scan oomox-git --noconfirm
sudo pacman -R evolution filezilla hexchat transmission-gtk vivaldi vivaldi-codecs-ffmpeg-extra-bin --noconfirm
sudo pacman -R plank variety xfburn --noconfirm
sudo pacman -R guvcview pavucontrol --noconfirm

echo "#################################################################"
echo "#################     Programs are removed     ##################"
echo "#################################################################"
