#!/bin/bash
echo "***************************"
echo "***************************"
echo "** Testing the code ***********"
echo "***************************"
WORKSPACE=/root/jekins/jenkins_home/workspace/devops

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
