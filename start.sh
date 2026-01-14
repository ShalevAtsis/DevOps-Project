#!/usr/bin/env bash
set -e

PORT_TO_USE="${PORT:-8080}"
sed -i "s/port=\"8080\"/port=\"${PORT_TO_USE}\"/g" /usr/local/tomcat/conf/server.xml

exec catalina.sh run
