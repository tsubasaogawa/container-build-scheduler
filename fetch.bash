#!/bin/bash


curl -s -o ./embulk -L "https://dl.embulk.org/embulk-latest.jar"
curl -i -s "https://dl.embulk.org/embulk-latest.jar" | grep -oP 'location: .+\.jar' | grep -oP '(\d+\.){1,2}(\d+)?' > /tmp/embulk.version
md5sum /tmp/embulk | cut -f1 -d' ' > /tmp/embulk.md5
