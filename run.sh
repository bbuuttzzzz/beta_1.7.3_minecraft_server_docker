#!/bin/bash
docker run -t \
    -p 25565:25565/udp \
    -p 25565:25565 \
    -v /root/mount/server.properties:/app/server.properties \
    -v /root/mount/world:/app/world \
    --name minecraft mcserv