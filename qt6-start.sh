#!/bin/sh

#Source the global fiel first
source /etc/profile.d/qt6-start-env.sh

if [ -f "${QT6_ENV}" ] ; then
        echo Overriding environment with user specified values
        source "${QT6_ENV}"
elif [ -f "${XDG_CONFIG_HOME}"/qt6-start.env ] ; then
        echo Overriding environment with user specified values
        source "${XDG_CONFIG_HOME}"/qt6-start.env
elif [ -f "${HOME}"/.config/qt6-start.env ] ; then
        echo Overriding environment with user specified values
        source "${HOME}"/.config/qt6-start.env
fi

program=$1
shift || true
echo executing: $program $@
exec $program $@
