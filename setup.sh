#!/bin/bash
sudo su
apt-get update
"bcm2835-v4l2" >> /etc/modules
"start_x=1" >>/boot/config.txt
apt-get install byacc flex -y
apt-get install openjdk-8-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-armhf/
apt-get install cmake -y
curl https://www.amazontrust.com/repository/SFSRootCAG2.pem -o /etc/ssl/cert.pem
git clone https://github.com/awslabs/amazon-kinesis-video-streams-producer-sdk-cpp
cd amazon-kinesis-video-streams-producer-sdk-cpp/kinesis-video-native-build


apt-get install g++ -y
apt-get install libssl-dev libcurl4-openssl-dev liblog4cplus-1.1-9 liblog4cplus-dev -y
apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-base-apps -y
apt-get install gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly gstreamer1.0-tools gstreamer1.0-omx -y
apt-get install make -y

chmod +x min-install-script

./min-install-scripts

reboot
