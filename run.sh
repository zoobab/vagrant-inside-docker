#!/bin/bash
docker run --privileged -v /dev/vboxdrv:/dev/vboxdrv -v /dev/vboxnetctl:/dev/vboxnetctl -it vagrant-inside-docker:latest /bin/bash -c "vagrant up && vagrant ssh"
