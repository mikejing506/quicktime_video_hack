#!/bin/bash
./quicktime_video_hack gstreamer --pipeline "queue name=audio_target ! wavparse ignore-length=true ! audioconvert ! avenc_aac ! aacparse ! rtpmp4apay pt=97 ! udpsink host=127.0.0.1 port=5002  queue name=video_target ! h264parse ! avdec_h264 ! videoconvert ! avenc_mpeg4 ! rtpmp4vpay name=mux config-interval=3 ! udpsink host=127.0.0.1 port=5000"
