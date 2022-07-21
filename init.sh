#!/bin/sh

mkdir -p discourse/discourse && mkdir discourse/postgresql && mkdir discourse/redis && mkdir discourse/sidekiq
curl -O https://raw.githubusercontent.com/5ym/discourse-traefik-swarm/main/discourse-compose.yml
echo 'customize compose file'
sleep 3
vim discourse-compose.yml
echo 'start deploy'
docker stack -c discourse-compose.yml deploy discourse
