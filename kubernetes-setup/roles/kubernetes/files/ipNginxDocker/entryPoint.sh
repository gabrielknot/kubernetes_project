#!/bin/bash
set -xe
: "${MY_POD_NAME?Need an api url}"

set -xe
: "${MY_POD_IP?Need an api url}"
set -xe
: "${MY_POD_NAMESPACE?Need an api url}"

sed -i "s/MY_POD_NAMESPACE/$MY_POD_NAMESPACE/g" /usr/share/nginx/html/index.html

sed -i "s/MY_POD_NAME/$MY_POD_NAME/g" /usr/share/nginx/html/index.html


sed -i "s/MY_POD_IP/$MY_POD_IP/g" /usr/share/nginx/html/index.html

exec "$@"
