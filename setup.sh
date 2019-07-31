#!/bin/bash

echo starting setup
sudo apt-get update
sudo sh -c "echo 'bcm2835-v4l2' >> /etc/modules"
sudo sh -c "echo 'start_x=1' >> /boot/config.txt"
echo files configured
echo installing dependencies
sudo apt-get install byacc flex -y
sudo apt-get install openjdk-8-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-armhf/
sudo apt-get install cmake -y
curl https://www.amazontrust.com/repository/SFSRootCAG2.pem -o /etc/ssl/cert.pem
git clone https://github.com/awslabs/amazon-kinesis-video-streams-producer-sdk-cpp
cd amazon-kinesis-video-streams-producer-sdk-cpp/kinesis-video-native-build

echo installing kinesis dependencies
sudo apt-get install g++ -y
sudo apt-get install libssl-dev libcurl4-openssl-dev liblog4cplus-1.1-9 liblog4cplus-dev -y
sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-base-apps -y
sudo apt-get install gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-tools gstreamer1.0-omx -y
sudo apt-get install make -y

echo installing kinesis
chmod +x min-install-script
./min-install-script

reboot
