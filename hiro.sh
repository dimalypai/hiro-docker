#!/bin/sh

docker container run --name hiro-docker --rm --detach hiro:1.0 > /dev/null
docker container cp blueprint.md hiro-docker:/tmp/blueprint.md
docker container exec hiro-docker hiro -input=/tmp/blueprint.md -output=/tmp/index.html
docker container cp hiro-docker:/tmp/index.html index.html
docker container stop hiro-docker > /dev/null
