#!/bin/bash
set -ue

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

until mysqladmin ping -h mysql -P 3306 --silent; do
  echo "Waiting for a connection to mysq"
  sleep 1s
done
echo "Successful connection to mysql"

bundle exec rake db:migrate
bundle exec rails s -p 80 -b '0.0.0.0'
