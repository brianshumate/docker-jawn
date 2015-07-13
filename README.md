```
 _____              __                   _____
|     \.-----.----.|  |--.-----.----.  _|     |.---.-.--.--.--.-----.
|  --  |  _  |  __||    <|  -__|   _| |       ||  _  |  |  |  |     |
|_____/|_____|____||__|__|_____|__|   |_______||___._|________|__|__|

```

# What?

**Docker Jawn** is my experimental Dockerfile collection for various 
applications so far, it contains support for the following:

* Chromium
* lynx
* rainbowstream
* wing
* xevil
* xteddy

Examples of each Dockerfile can be found in the `share` directory, with
supporting bits located in `bin` and `etc`.

## Mac OS X and boot2docker

There is a hack to facilitate using X11 applications on Mac OS X with 
[boot2docker](http://boot2docker.io/) and XQuartz.

*NOTE*: Using `socat` this way on public networks is insecure; you can enhance
the security of this solution with `bind`, `su`, and `range` options. See
`man socat` for details.

First, use Homebrew to install the prerequisites and open XQuartz:

```
brew install socat
brew cask install xquartz
open -a XQuartz
```

In an XQuartz terminal, use `socat` to listen for X connections like this:

```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
```

In a second XQuartz terminal, run your X11 based Dockerized application:

```
export MYDISPLAY=192.168.59.3:0
docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=$MYDISPLAY --name xteddy brianshumate/xteddy
```

The IP address for `MYDISPLAY` can be determined by inspecting the `vboxnet0`
interface:

```
ifconfig vboxnet0 | grep 'inet' | cut -d ' ' -f2
```

## THANKS

* [@jfrazelle](https://github.com/jfrazelle): for much inspiration from 
her knowledge-dropping, collection of Dockerfiles, 
and her 
[Docker Containers on the Desktop](https://blog.jessfraz.com/post/docker-containers-on-the-desktop/) 
post.
* [@slobo](https://github.com/slobo) for the original socat idea
