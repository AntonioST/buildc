#! /bin/sh

if [ -n "$1" ]; then
    INSTALL_PATH=$1/lib
elif [ -n "$ANT_HOME" ]; then
    INSTALL_PATH="$ANT_HOME/lib"
else
    INSTALL_PATH="$HOME/.ant/lib"
    mkdir -p $INSTALL_PATH
fi

echo install jacoco to library $INSTALL_PATH

if [ ! -d lib ]; then
    ant retrieve
fi

if [ $? -ne 0 ]; then
    >&2 echo ant retrieve fail
    exit 1
fi

echo install jacoco library

if [ -w $INSTALL_PATH ]; then
    CP=cp
else
    CP='sudo cp'
fi

$CP lib/build/org.jacoco.agent.jar $INSTALL_PATH
$CP lib/build/org.jacoco.ant.jar $INSTALL_PATH
$CP lib/build/org.jacoco.core.jar $INSTALL_PATH
$CP lib/build/org.jacoco.report.jar $INSTALL_PATH
