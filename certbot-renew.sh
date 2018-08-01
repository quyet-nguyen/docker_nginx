docker run -i --rm \
    -v serverinit_certbot-conf:/etc/letsencrypt \
    -v serverinit_certbot-certs:/var/lib/letsencrypt \
    -v serverinit_nginx-webroot:/usr/share/nginx/html \
    certbot/certbot renew
docker exec nginx nginx -s reload
