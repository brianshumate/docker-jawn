```
 _____              __                   _____
|     \.-----.----.|  |--.-----.----.  _|     |.---.-.--.--.--.-----.
|  --  |  _  |  __||    <|  -__|   _| |       ||  _  |  |  |  |     |
|_____/|_____|____||__|__|_____|__|   |_______||___._|________|__|__|

```

# What?

**Docker Jawn** is my experimental Dockerfile collection for a variety of 
applications; so far, it contains support for the following:

* Chrome
* Chromium
* Firefox
* lynx
* rainbowstream
* wing
* xeji
* xevil
* xpdf
* xteddy

Examples of each Dockerfile are in the `share` directory, with supporting bits
located in `bin` and `etc`.

## Mac OS X and Docker Machine

There is a hack to use X11 applications on Mac OS X with 
[Docker Machine](https://docs.docker.com/machine/) and XQuartz.

First, use Homebrew to install the prerequisites and open XQuartz:

```
brew install docker docker-machine socat
brew cask install xquartz
open -a XQuartz
```

In a terminal (either an XQuartz `xterm` or Terminal.app), use `socat` to 
listen for X11 connections like this:

```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

*NOTE*: Using `socat` this way on public networks is insecure; you can enhance
the security of this solution with `bind`, `su`, and `range` options. See
`man socat` for details.

You can at least limit connections to the VirtualBox interfaces for 
Docker Machine by using the `range` option like this: 

```
socat TCP-LISTEN:6000,range=192.168.59.0/24,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

In a second terminal, run your X11 based Dockerized application:

```
export MYDISPLAY=192.168.59.3:0
docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$MYDISPLAY --name xteddy brianshumate/xteddy
```

You can determin the IP address for `MYDISPLAY` by inspecting the `vboxnet0`
interface:

```
ifconfig vboxnet0 | grep 'inet' | cut -d ' ' -f2
```

> **NOTE**: If you have the OS X firewall configured to block all incoming
> connections, this technique will not work.

## THANKS

* [@jfrazelle](https://github.com/jfrazelle): for much inspiration from 
her knowledge-dropping, collection of Dockerfiles, 
and her 
[Docker Containers on the Desktop](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/) 
post.
* [@slobo](https://github.com/slobo) for the original socat idea
