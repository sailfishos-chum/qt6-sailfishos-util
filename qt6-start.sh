#!/bin/sh

#Source the qt6 environment
source /etc/profile.d/qt6-start-env.sh

program=$1
shift || true
echo executing: $program $@
exec $program $@
