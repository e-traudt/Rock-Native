#!/bin/bash -e
# deploy to now
URL=$(now ./web/client/dist -e NODE_ENV=production --token ${NOW_TOKEN})
# alias to now
now --token ${NOW_TOKEN} alias set ${URL} ${TRAVIS_BRANCH}.now.sh
