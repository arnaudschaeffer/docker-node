#!/bin/bash

set -x

# Adapt UID & GID if needed
if [[ -n "$UID" ]] && [[ "$(id -u node)" != "$UID" ]]; then
    usermod -u ${UID} node
fi

if [[ -n "$GID" ]] && [[ "$(id -g node)" != "$GID" ]]; then
    groupmod -g ${GID} node
fi