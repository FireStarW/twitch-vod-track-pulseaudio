#!/bin/sh

pactl load-module module-remap-sink sink_name=base_output master=$AUDIOOUTPUTDEVICENAMEHERE channels=2 master_channel_map=front-left,front-right channel_map=front-left,front-right remix=no;
pacmd update-sink-proplist base_output device.description="Base_Sink";
pactl load-module module-remap-sink sink_name=music_output master=$AUDIOOUTPUTDEVICENAMEHERE channels=2 master_channel_map=front-left,front-right channel_map=front-left,front-right remix=no; 
pacmd update-sink-proplist music_output device.description="Music_Sink"
