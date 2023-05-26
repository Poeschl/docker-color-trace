# Dockerized color_trace

This repository packs the [color_trace] application into an docker container for easy use.

[color_trace]: https://github.com/migvel/color_trace

## Usage

For execution specify the desired parameter as command after the image name and make sure to map your image folder or images.
The workdir inside the container is always `/images`.

> `color-trace` does not support absolute images paths!

For example:

```shell
docker run --rm -v "$(pwd):/images" ghcr.io/poeschl/docker-color-trace -i input.png -o output.svg -c 6
```
