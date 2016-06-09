#!/bin/bash

set -e

if [ "$1" = 'ucc-bin' ]; then
    # Put cdkey in place
    echo $CDKEY > cdkey
    cp UT2004.ini.tpl copy.bak
    envtpl UT2004.ini.tpl
    mv copy.bak UT2004.ini.tpl
fi

exec "$@"
