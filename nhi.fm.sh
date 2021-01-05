#!/bin/bash
echo "#EXTM3U8" > ~/Music/nhi.fm.m3u8
echo "#EXTINF:-1,nhi.fm" >> ~/Music/nhi.fm.m3u8
echo "https://s3.radio.co/sb260bd9e3/listen" >> ~/Music/nhi.fm.m3u8
mpv ~/Music/nhi.fm.m3u8
