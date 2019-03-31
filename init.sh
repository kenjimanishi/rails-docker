#!/bin/bash
set -ue
cd `dirname $0`

docker-compose run --rm --entrypoint='' app rails new . -f -d mysql && \
sed -i '' -e 's/chromedriver-helper/webdrivers/g' rails-app/Gemfile
cp build/database.yml.default rails-app/config/database.yml && \
docker-compose up -d --build
