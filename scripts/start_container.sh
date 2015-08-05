#!/usr/bin/env bash
set -e
cd /home/ec2-user
docker build -t nritholtz/raneto .
docker run -d -p 80:3000 --name raneto nritholtz/raneto