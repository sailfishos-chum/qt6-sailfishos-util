#!/bin/sh

if [ -f "${QT6_EMV}" ] ; then
        echo Overriding environment with user specified values
        source "${QT6_EMV}"
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
