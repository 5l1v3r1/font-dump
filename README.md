# font-dump

This project makes it easy to download tons of fonts and dump them to image files.

There are tons of custom-made fonts in the wild. Gathering them could help with machine vision, captcha systems, etc.

# Usage

I suggest you use a [Docker](https://www.docker.com) container for this. Fetching font images with Docker is easy:

```
$ mkdir output_images
$ docker build -t fontdump .
$ docker run --rm -v "$PWD/output_images:/out" fontdump
```

This will create an `output_images/` directory and save a bunch of rendered fonts inside it.

The `docker build` command will likely take a few minutes; the dependencies for `ttf_render` are somewhat heavy-weight. The `docker run` command also takes several minutes, but most of that time is spent downloading fonts. Rendering itself is fairly fast.
