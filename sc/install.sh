#!/bin/bash

apt-get update
apt install openjdk-17-jre-headless -y
wget https://piston-data.mojang.com/v1/objects/5b868151bd02b41319f54c8d4061b8cae84e665c/server.jar
java -Xms1G -Xmx2G -jar server.jar nogui
sed -i '3d' eula.txt
echo "eula=true" >> eula.txt
java -Xms1G -Xmx8G -jar server.jar nogui
