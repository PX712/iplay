#!/bin/bash

# run simple Ruby script
java -jar bot.jar 

#the error specified lies with the .jar, what is it?
#Cannot run sketch without a display. Read this for possible solutions:
#https://github.com/processing/processing/wiki/Running-without-a-Display
#Serving at http://26c5498a6664:3000, http://127.0.0.1:3000, http://172.17.0.87:3000
#the jar was made using two processing libraries

# start a basic webserver to stop Glitch from continually restarting
# see /opt/watcher/app-types/static/start.sh
source ${APP_TYPES_DIR}/utils.sh
export PATH="${PATH}:${DEFAULT_NODE_DIR}"
ws --port 3000 --log.format combined --directory . --blacklist '/.env' '/.data' '/.git' &
pid=$!
wait ${pid}

