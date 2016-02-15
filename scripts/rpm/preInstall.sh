#!/bin/sh
echo "Creating group: daemon-demo"
/usr/sbin/groupadd -f -r daemon-demo 2> /dev/null || :

echo "Creating user: daemon-demo"
/usr/sbin/useradd -r -m -c "daemon-demo user" daemon-demo -g daemon-demo 2> /dev/null || :
