#!/bin/bash

pidfile=/run/ocserv.pid

printf "\e[33m########### ocserv services starting ###########\e[0m"
# ocserv service
/usr/sbin/ocserv --debug=2 --foreground --config=/etc/ocserv/ocserv.conf --pid-file=${pidfile}
# /usr/sbin/ocserv --foreground --config /etc/ocserv/ocserv.conf -d 2 &

wait -n
exit $?
