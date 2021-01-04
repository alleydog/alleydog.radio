#!/bin/bash
echo "#EXTM3U8" > ~/Radio/nhi.fm.m3u8
echo "#EXTINF:-1,nhi.fm" >> ~/Radio/nhi.fm.m3u8
echo "https://s3.radio.co/sb260bd9e3/listen" >> ~/Radio/nhi.fm.m3u8
mpv ~/Radio/nhi.fm.m3u8
