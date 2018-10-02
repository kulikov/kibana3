#!/bin/bash -ex

function replace_conf {
  sed -i "s/$(echo $1 | sed -e 's/\([[\/.*]\|\]\)/\\&/g')/$(echo ${!1} | sed -e 's/[\/&]/\\&/g')/g" /app/config.js
}

replace_conf ELASTICSEARCH_ADDRESS

exec "$@"
