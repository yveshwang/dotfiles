#!/bin/bash

# see README for more info
sudo ifconfig lo0 alias 172.16.123.1
docker run -it --rm busybox ping 172.16.123.1

# instead of copying the files, use tee and use $HOME and $USER envar
echo "tee gpg-agent to ~/.gnupg