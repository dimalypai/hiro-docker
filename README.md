# Hiro Docker

This project sets up a Docker container for running Hiro
(https://github.com/peterhellberg/hiro). It is based on the `golang:alpine`
base image.

> It turns out it is not that trivial to get Hiro working... It depends on an
> older version (3.x) of Drafter (https://github.com/apiaryio/drafter), which
> seems to be hard to install/build (one of its dependencies, namely snowcrash,
> does not compile when updating to the `v3.2.7` tag in the Drafter
> repository). What this project does is building the latest version of
> Snowcrash (https://github.com/apiaryio/snowcrash) and then injecting it as a
> Drafter dependency. This "ugly hack" makes things work.

## Building Docker image

The initial step is to build the image. There is a simple wrapper script to do
this:
```
./build.sh
```

## Usage

After the image has been built, it is possible to run the documentation
generation. The script has to be executed inside a directory containing the
`blueprint.md` file. As a result, the `index.html` file will be created in the
same directory. For example:
```
cd docs
<path-to-hiro-docker>/hiro.sh
```

It is useful to set up an alias to point to the `hiro.sh`, so that it is easily
accessible from everywhere.

