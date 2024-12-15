#!/bin/bash
docker run -t \
    -p 25565:25565/udp \
    -p 25565:25565 \
    -v /root/mount/server.properties \
    -v /root/mount/world \
    --name minecraft mcserv