#! /bin/bash
 
if [ -z ${VCAP_APP_PORT} ]; then
    export VCAP_APP_PORT=8080
fi
 
echo "Setting port to $VCAP_APP_PORT"

export JAVA_OPTS="-Dtomee.cf.http=$VCAP_APP_PORT $JAVA_OPTS"
