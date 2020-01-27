#!/bin/bash

set -x

# Adapt UID & GID if needed
if [[ -n "$UID" ]] && [[ "$(id -u www-data)" != "$UID" ]]; then
    usermod -u ${UID} solr
fi

if [[ -n "$GID" ]] && [[ "$(id -g www-data)" != "$GID" ]]; then
    groupmod -g ${GID} solr
fi