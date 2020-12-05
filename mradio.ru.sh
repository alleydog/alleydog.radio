#!/bin/bash
echo "#EXTM3U8" > ./mradio.ru.m3u8
echo "#EXTINF:-1,mradio.ru" >> ./mradio.ru.m3u8
echo $(curl -sX GET http://mradio.ru/player.html | grep '<audio id="player" src="http://stream2.loveradio.ru:80/16_mradio_24?type=.aac' | awk -F\" '{ print $4 }') >> ./mradio.ru.m3u8
