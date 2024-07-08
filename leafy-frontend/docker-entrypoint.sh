#!/bin/sh
set -e

# default.conf.templete 파일에서 환경 변수를 대체하고 결과를 default.conf에 저장
envsubst '${BACKEND_HOST} ${BACKEND_POST}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"