#!/bin/bash

set -e

# start be
npm run --prefix be serve &
PIDBE=$!

# start fe
yarn --cwd ./fe start &
PIDFE=$!

wait $PIDBE
wait $PIDFE
