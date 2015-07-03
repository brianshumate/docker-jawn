# XEvil Notes

You have to do some hackery with the `socat` utility and XQuartz on
Mac OS X, but you can get XEvil working this way:

```
brew install socat
brew cask install xquartz
open -a XQuartz
```

Then in an XQuartz based X-Term (**Applications** > **Terminal**) run
socat to grab the X TCP port:

```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

Finally, in another XQuartz based Xterm, determine the determine `vboxnet0`
IP address:

```
ifconfig vboxnet0
vboxnet0: flags=8843<UP,BROADCAST,RUNNING,SIMPLEX,MULTICAST> mtu 1500
    ether 0a:00:27:00:00:00 
    inet 192.168.59.3 netmask 0xffffff00 broadcast 192.168.59.255
```

Set your display by adding a ':0' to the `vboxnet` IP address and export it
as the variable *MYDISPLAY*.

```
export MYDISPLAY=192.168.59.3:0
```

Run XEvil:

```
docker run -it --net host --cpuset 0 --memory 2048mb \
-v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY \
-v $HOME/incoming:/root/Downloads -v $HOME/.config/google-chrome/:/data \
--name chrome brianshumate/chrome
```
