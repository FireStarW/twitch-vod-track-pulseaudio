# twitch-vod-track-pulseaudio
script to make 2 null sinks to seperate music and game audio for twitch streams


This is to have music only present in the live stream and not the VODs for twitch streams, with OBS on Linux and Pulseaudio remap sinks (formerly used 2 null sinks, but 1 remap sink accomplishes the same thing).

the text $AUDIOOUTPUTDEVICENAMEHERE will need to be replaced with the name of your audio output device in pulseaudio. `pacmd list-sinks` can help with that.

For more info, see description of: https://youtu.be/rZYNmTvI13E
