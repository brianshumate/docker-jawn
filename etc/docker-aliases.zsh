# Docker Aliases

alias dochromium='docker run -it --net host --cpuset-cpus 0 --memory 2048mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY -v $HOME/incoming:/root/Downloads -v $HOME/.config/google-chrome/:/data --name chromium brianshumate/chromium'
alias dochrome='docker run -it --net host --cpuset-cpus 0 --memory 2048mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY -v $HOME/incoming:/root/Downloads -v $HOME/.config/google-chrome/:/data --name chrome brianshumate/chrome'
alias dolynx='docker run -it --name lynx brianshumate/lynx'
alias dorainbowstream='docker run -it -v $HOME/.rainbow_oauth:/root/.rainbow_oauth -v $HOME/.rainbow_config.json:/root/.rainbow_config.json --name rainbowstream brianshumate/rainbowstream'
alias dowing='docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY --name wing brianshumate/wing'
alias doxeji='docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY --name xevil brianshumate/xeji'
alias doxevil='docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY --name xevil brianshumate/xevil'
alias doxpdf='docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY -v $HOME/incoming/tmp:/root/PDF --name xpdf brianshumate/xpdf'
alias doxteddy='docker run -it --net host -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$MYDISPLAY --name xteddy brianshumate/xteddy'
