#!/usr/bin/env bash
docker build -t mofesola/nginx-certbot nginx/.
docker push mofesola/nginx-certbot
