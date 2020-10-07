#!/bin/bash
mpv $(curl -sX GET http://mradio.ru/player.html | grep '<audio id="player" src="http://stream2.loveradio.ru:80/16_mradio_24?type=.aac' | awk -F\" '{ print $4 }')
