export QT_QUICK_CONTROLS_STYLE=org.kde.breeze
export QT_WAYLAND_FORCE_DPI=260
export QT_QPA_PLATFORMTHEME=kde
export QT_QUICK_CONTROLS_MOBILE=1
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_MEDIA_BACKEND=gstreamer

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
