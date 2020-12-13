#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/rafael/PAI/src/kobuki_desktop/kobuki_qtestsuite"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/rafael/PAI/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/rafael/PAI/install/lib/python2.7/dist-packages:/home/rafael/PAI/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/rafael/PAI/build" \
    "/usr/bin/python2" \
    "/home/rafael/PAI/src/kobuki_desktop/kobuki_qtestsuite/setup.py" \
     \
    build --build-base "/home/rafael/PAI/build/kobuki_desktop/kobuki_qtestsuite" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/rafael/PAI/install" --install-scripts="/home/rafael/PAI/install/bin"
