#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven"

echo "** Logging in ***"
docker login -u cybersectower -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG cybersectower/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push cybersectower/$IMAGE:$BUILD_TAG
