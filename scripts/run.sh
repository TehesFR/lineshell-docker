#!/bin/bash

# Initialize first run
if [[ -e /.firstrun ]]; then
    /scripts/first_run.sh
fi

# Repair data if container was restarted
if [[ -s /data/mongod.lock ]] ; then
rm /data/mongod.lock
echo "Repair MongoDB..."
/usr/bin/mongod --dbpath /data --repair
echo "Starting MongoDB..."
/usr/bin/mongod --dbpath /data --auth --nojournal --smallfiles &
else
echo "Starting MongoDB..."
/usr/bin/mongod --dbpath /data --auth --nojournal --smallfiles &
fi ;

while ! nc -vz localhost 27017; do sleep 1; done

# Start Nodejs server.js
echo "Starting nodejs server..."
/usr/bin/nodemon /lineshell/server.js
