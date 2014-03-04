# Dockerfile for GOLANG 1.2 based on 
# Ubuntu 13.10 (Saucy Salamander)
#
# VERSION    1.0

# Ubuntu image built with Debian’s tool Debootstrap
FROM lgsd/saucy

MAINTAINER Luca G. Soave <luca.soave@gmail.com>

# To force the upgrade of all the next packages
# change REFRESHED_AT date, from time to time
ENV REFRESHED_AT 2014-05-03

# Make sure the package repository is up to date
RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get -qq update  && \
    apt-get -y  upgrade && \
    apt-get install -y wget tar ca-certificates git

# Download the archive (go1.2 for linux-amd64) and extract it 
# into /usr/local, creating a Go tree in /usr/local/go
RUN wget https://go.googlecode.com/files/go1.2.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.2.linux-amd64.tar.gz && \
    rm go1.2.linux-amd64.tar.gz

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set GOPATH/GOROOT environment variables
ENV GOPATH /go
ENV PATH   $PATH:/usr/local/go/bin:$GOPATH/bin

CMD ["go", "env"]

