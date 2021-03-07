#!/bin/sh

pactl load-module module-null-sink sink_name="Main_Virtual_Sink" sink_properties=device.description="main-virtual-sink"
pactl load-module module-loopback latency_msec=1 source=Main_Virtual_Sink.monitor sink=SINKNAMEHERE
pactl load-module module-null-sink sink_name="Music_Virtual_Sink" sink_properties=device.description="music-virtual-sink" 
pactl load-module module-loopback latency_msec=1 source=Music_Virtual_Sink.monitor sink=SINKNAMEHERE
