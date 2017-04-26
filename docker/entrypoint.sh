#!/usr/bin/env bash

sed -i 's/window.location.hostname/"'${ELASTICSEARCH_HOST}'"/g' /app/config.js

exec "$@"
