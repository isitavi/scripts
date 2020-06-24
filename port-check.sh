#!/bin/bash
HOSTNAME=$(hostname)
PORT=80

if telnet $HOSTNAME $PORT < /dev/null 2>&1 | grep -q Connected
then
    echo its fine
else
    systemctl restart httpd
fi
