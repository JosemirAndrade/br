#!/bin/bash

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c '
wget http://www.sis4.com/brModelo/brModelo.jar
sudo mkdir /opt/brModelo
sudo chmod +s /opt/brModelo
sudo chmod 777 /opt/brModelo
sudo cp /home/aluno/brModelo.jar /opt/brModelo/

curl -o ~/brModelo.png -OL https://github.com/chcandido/brModelo/raw/master/src/imagens/logico.png
sudo mv ~/brModelo.png /opt/brModelo

tee /usr/share/applications/brModelo.desktop <<EOF

[Desktop Entry]
Version=3.2
Name=brModelo
Exec=java -jar /opt/brModelo/brModelo.jar
Icon=/opt/brModelo/brModelo.png
Type=Application
Comment=The software for MER
Path=/opt/brModelo
Terminal=false
StartupNotify=true
Categories=Development;Education;

apt install google-chrome-stable -y
apt install firefox firefox-locale-pt -y
'
