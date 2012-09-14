#!/bin/bash
kill -9 `cat django.pid`
python manage.py runfcgi daemonize=true pidfile=`pwd`/django.pid host=127.0.0.1 port=9001 maxrequests=1 &
