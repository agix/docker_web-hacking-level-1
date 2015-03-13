#!/bin/bash

if [ ! -f /.root_pw_set ]; then
    /set_root_pw.sh
fi
cd /app/ && git pull
/usr/sbin/sshd
exec supervisord -n
