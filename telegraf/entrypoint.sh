#!/bin/bash
set -e

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf --plugin-directory /usr/lib/telegraf-plugins/ "$@"
fi

exec "$@"