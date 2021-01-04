#!/bin/bash
echo "#EXTM3U8" > ~/Radio/mradio.ru.m3u8
echo "#EXTINF:-1,mradio.ru" >> ~/Radio/mradio.ru.m3u8
echo $(curl -sX GET http://mradio.ru/player.html | grep '<input id="kbps64" type="radio" name="kbps" value="http://stream2.loveradio.ru:80/16_mradio_56?type=.aac' | awk -F\" '{ print $8 }') >> ~/Radio/mradio.ru.m3u8
mpv ~/Radio/mradio.ru.m3u8
