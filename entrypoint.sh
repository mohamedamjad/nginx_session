#!/bin/bash
# First we start nginx. Note that this is daemonized
/usr/sbin/nginx
/usr/local/bin/docker-gen -only-exposed -watch -notify "/usr/sbin/nginx -s reload" /etc/nginx/nginx.tmpl /etc/nginx/conf.d/default.conf >>/dev/stdout