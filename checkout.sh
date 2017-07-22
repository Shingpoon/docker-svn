#! /usr/bin/env bash

CHECKOUT_PATH=~/projectName

docker run -it -v $CHECKOUT_PATH:/tmp --rm -e "LC_ALL=en_US.UTF-8" svn bash -c 'svn co --no-auth-cache --username username --password password url /tmp/project'

