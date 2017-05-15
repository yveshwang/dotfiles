#!/bin/bash

# last upated 12.05.2017
# see README for more info

sudo ifconfig lo0 alias 172.16.123.1
docker run -it --rm busybox ping 172.16.123.1
