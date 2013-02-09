#! /bin/sh
./gstfs -o src=$1,src_ext=ogg,dst_ext=mp3,pipeline="filesrc name=\"_source\" ! oggdemux ! vorbisdec ! audioconvert ! lame bitrate=160 ! id3v2mux ! fdsink name=\"_dest\" sync=false" $2
