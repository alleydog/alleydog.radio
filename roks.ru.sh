#!/bin/bash
echo "#EXTM3U" > ~/Music/roks.ru.m3u
echo "#EXTINF:-1,rock.ru" >> ~/Music/roks.ru.m3u
echo $(curl -sX GET https://roks.ru/player.php | grep 'source: "https://md5-icecast-radiorocks.cdnvideo.ru/roks.stream?md5=' | awk -F\" '{ print $2 }')  >> ~/Music/roks.ru.m3u
mpv ~/Music/roks.ru.m3u
