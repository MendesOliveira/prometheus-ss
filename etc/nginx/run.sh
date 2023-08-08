#!/bin/sh

# Injetando variaveis de ambiente
envsubst < nginx-basic-auth.conf > /etc/nginx/conf.d/default.conf

# htpasswd gerando authenticacao basica
htpasswd -c -b /etc/nginx/.htpasswd $BASIC_USERNAME $BASIC_PASSWORD

nginx -g "daemon off;"

