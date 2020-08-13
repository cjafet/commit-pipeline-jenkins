#!/bin/sh

j=`cat config.json`
echo $j
curl -H "Content-Type: application/json" -X PUT -d "$j" http://aa736da781a634ef7986805596c267f3-403110847.sa-east-1.elb.amazonaws.com/policy
