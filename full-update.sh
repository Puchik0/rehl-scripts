#!/bin/sh

echo " --- clean ---"
sudo dnf clean all
echo " --- upgrade ---"
sudo dnf upgrade -y
echo " --- autoremove ---"
sudo dnf autoremove -y
#echo " --- conda ---"
#conda update --all -y
echo "DONE."
