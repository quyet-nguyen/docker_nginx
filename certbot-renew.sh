docker run -it --rm \
    -v certbot-conf: /etc/letsencrypt \
    -v certbot-certs: /var/lib/letsencrypt \
    -v nginx-webroot: /usr/share/nginx/html \
    certbot/certbot renew
docker exec nginx nginx -s reload