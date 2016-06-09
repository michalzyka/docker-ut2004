#!/bin/bash

set -e

if [ "$1" = 'ucc-bin' ]; then
    # Put cdkey in place
    echo $CDKEY > cdkey
    if [ -f UT2004.ini.tpl ];
    then
        envtpl UT2004.ini.tpl   
    fi
fi

exec "$@"
