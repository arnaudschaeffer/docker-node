#!/bin/bash

set -x

groupmod -g ${GID} node && usermod -u ${UID} -g ${GID} node