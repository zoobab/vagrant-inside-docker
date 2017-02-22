About
=====

Running vagrant inside a docker container. We use a small box based on OpenWRT 15.05 as a lightweight distro (7MB).

Requirements
============

You need vagrant kernel modules on the host.

Usage
=====

Just launch ```./run.sh```

Oneliner
========

You can also run it as a oneliner:

```
docker run --privileged -v /dev/vboxdrv:/dev/vboxdrv -v /dev/vboxnetctl:/dev/vboxnetctl -it zoobab/vagrant-inside-docker:latest /bin/bash -c "vagrant up && vagrant ssh"
```

Screenshot
==========

Everybody love screenshots:


```
zoobab@filez /home/zoobab/vagrant-inside-docker [33]$ ./run.sh 
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'living42/openwrt-15.05-x86'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'living42/openwrt-15.05-x86' is up to date...
==> default: Setting the name of the VM: vagrant-openwrt_default_1487750817274_66403
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
==> default: Forwarding ports...
    default: 80 (guest) => 8081 (host) (adapter 1)
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: 
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default: 
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: No guest additions were detected on the base box for this VM! Guest
    default: additions are required for forwarded ports, shared folders, host only
    default: networking, and more. If SSH fails on this machine, please install
    default: the guest additions and repackage the box to continue.
    default: 
    default: This is not an error message; everything may continue to work properly,
    default: in which case you may ignore this message.
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 CHAOS CALMER (15.05, r46767)
 -----------------------------------------------------
  * 1 1/2 oz Gin            Shake with a glassful
  * 1/4 oz Triple Sec       of broken ice and pour
  * 3/4 oz Lime Juice       unstrained into a goblet.
  * 1 1/2 oz Orange Juice
  * 1 tsp. Grenadine Syrup
 -----------------------------------------------------
vagrant@OpenWrt:~$ 

```

Bugs
====

* Sometimes ```docker stop``` takes time to stop the running container, or never stops it :-)
* Sometimes virtualbox of the GUEST container is very sensitive to the version
of the HOST, so the closer they are the better.
* I had to upgrade and do some debian pinning to have virtualbox and vagrant
from Ubuntu Zesty while the rest of the distro was still on Xenial. Will
provide a pinning example once I have it working.
