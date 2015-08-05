#!/usr/bin/env bash

set -e

docker run -d --volumes-from /tmp/content -p 80:3000 --name raneto chanux/raneto