#!/bin/sh
datajson=`cat data.json`
validateprofile=`cat validate-profile.rego`
configpolicy=`cat config-policy.json`

namespace=echo jq '.namespace' config-policy.json | sed 's/\"//'
query=echo jq '.regoQueryName' config-policy.json | sed 's/\"//'


payload='{
    "configMapName": '"${namespace}.${query}"',
    "namespace": '"${query}"',
    "data": {
          "data.json": '${datajson}',
          "config-policy.json": '${configpolicy}',
          "validate-profile.rego": "'${validateprofile}'"
        }
}'

echo $payload

curl -H "Content-Type: application/json" -X PUT -d "$payload" http://aa736da781a634ef7986805596c267f3-403110847.sa-east-1.elb.amazonaws.com/policy
