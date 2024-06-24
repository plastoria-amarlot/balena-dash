#!/bin/bash
if [[ ! -z $REMOTE_DEBUG ]] && [[ "$REMOTE_DEBUG" -eq "1" ]]
then
    echo "Forwarding remote debugging port 35174"
    socat tcp-listen:35174,fork tcp:localhost:35173 &
fi

balena-idle
