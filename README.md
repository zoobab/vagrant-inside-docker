About
=====

Running vagrant inside a docker container. We use a small box based on OpenWRT 15.05 as a lightweight distro (5MB).

Requirements
============

You need vagrant kernel modules on the host.

Usage
=====

Just launch ```./run.sh```

Bugs
====

* Sometimes ```docker stop``` takes time to stop the running container. 
