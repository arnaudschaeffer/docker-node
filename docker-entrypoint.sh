#!/bin/sh

set -x

yarn install

if [ $APP_ENV = "prod" ]; then
    yarn build
else
    yarn watch
fi

