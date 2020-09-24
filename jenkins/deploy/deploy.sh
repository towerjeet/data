#!/bin/bash

echo maven > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth service_user@172.31.32.163:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish service_user@172.31.32.163:/tmp/publish
ssh -i /opt/prod service_user@172.31.32.163 "/tmp/publish"
