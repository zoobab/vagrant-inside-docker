#!/bin/bash
docker run --privileged -v /dev/vboxdrv:/dev/vboxdrv -v /dev/vboxnetctl:/dev/vboxnetctl --net=host -it vagrant-inside-docker:latest bash
