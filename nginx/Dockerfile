FROM nginx:1.13.5
LABEL Maintainer Mofesola Babalola <me@mofesola.com>

WORKDIR /etc/nginx

RUN apt-get update && apt-get install -y software-properties-common \
                   && add-apt-repository ppa:certbot/certbot \
                   && apt-get install -y python-certbot-nginx \
                   && apt-get clean \
                   && rm -rf /var/lib/apt/lists/*

RUN rm /etc/nginx/conf.d/default.conf /etc/nginx/nginx.conf

COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/nginx.conf /etc/nginx/

COPY entrypoint.sh /entrypoint.sh

EXPOSE 80 443
ENTRYPOINT /entrypoint.sh
CMD ["nginx", "-g", "daemon off;"]
