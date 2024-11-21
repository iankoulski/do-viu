# do-viu

View images in your terminal shell using the [do-framework](https://bit.ly/do-framework). 

Source: [https://github.com/iankoulski/do-viu.git](https://github.com/iankoulski/do-viu.git)

Container: [https://hub.docker.com/r/iankoulski/do-viu](https://hub.docker.com/r/iankoulski/do-viu)

# Usage

```
docker run -it --rm -v $(pwd):/wd iankoulski/do-viu bash
```

or

```
docker run -it --rm -v $(pwd):/wd iankoulski/do-viu viu /wd/<image-file-name>
```

# Build

To build the project after you clone the source, simply run the `./build.sh` script.

# Run
The script builds a container image, that you can run using the `./run.sh` script.

# Status
The `./status.sh` script shows whether the `do-viu` container is running or not.

# Exec
Open a shell in a running container using the `./exec.sh` script.

You will see the interactive do-viu command prompt.

```text

     _                  _       
  __| | ___      __   _(_)_   _ 
 / _` |/ _ \ ____\ \ / / | | | |
| (_| | (_) |_____\ V /| | |_| |
 \__,_|\___/       \_/ |_|\__,_|
                                

do-view version v20241120

Usage:
viu <path-to-image>

root@bef6ed1a2b67:/#  

```

The project home folder is mounted under `/wd` in the container. You can use that folder to view images that are external to the container. The source code and sample images are available under folder `/viu`.

# Stop
The `./stop.sh` script stops and removes the running do-viu container

# References
* [docker](https://docs.docker.com/get-started/get-docker/)
* [do-framework](https://bit.ly/do-framework)
* [viu](https://github.com/atanunq/viu)
