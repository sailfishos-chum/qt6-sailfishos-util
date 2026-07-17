#!/bin/sh

if [ -f ~/.qt6-start.env ] ; then
        echo Overriding environment with user specified values
        source ~/.qt6-start.env
fi

program=$1
shift || true
echo executing: $program $@
exec $program $@
