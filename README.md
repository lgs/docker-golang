docker-golang
==================

Dockerfile for GOLANG 1.2 based on Ubuntu 13.10 (Saucy Salamander)

## Use 

    $ docker pull lgsd/docker-golang
    $ docker run -i -t lgsd/docker-golang bash
    $ root@0a5237e1f1d8:/# env

    HOSTNAME=0a5237e1f1d8
    TERM=xterm
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/go/bin:/go/bin
    REFRESHED_AT=2014-05-03
    PWD=/
    SHLVL=1
    HOME=/
    GOPATH=/go
    container=lxc
    _=/usr/bin/env

## OR 

by cloning gihub repo:

    $ git clone https://github.com/lgs/docker-golang.git && cd docker-golang
    $ docker build -t golang .
    $ docker run -i -t golang bash
    $ root@875687e53a15:/# go version
    go version go1.2 linux/amd64


## Copyright

Copyright (c) 2013-2014 Luca G. Soave

