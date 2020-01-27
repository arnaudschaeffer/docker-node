#!/bin/sh

set -x

. /update_user.sh

yarn install

if [ $APP_ENV = "prod" ]; then
    yarn build
else
    yarn watch
fi

