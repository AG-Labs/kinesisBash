#!/bin/bash

export AWS_ACCESS_KEY_ID= <key>
export AWS_SECRET_ACCESS_KEY= <key>
export AWS_DEFAULT_REGION=eu-west-1

cd amazon-kinesis-video-streams-producer-sdk-cpp/kinesis-video-native-build
./kinesis_video_gstreamer_sample_app <stream name> -h 1920 -w 1080 -f 30 
