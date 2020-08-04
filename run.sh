#!/bin/sh

j=`cat config.json`
echo $j
curl -H "Content-Type: application/json" -X PUT -d "$j" https://postman-echo.com/put
