```SH
docker run --rm -it   -v "${PWD}/docker-data/letsencrypt/:/etc/letsencrypt"   -v "${PWD}/docker-data/letsencrypt/logs:/var/log/letsencrypt"   -v "/var/www/certbot:/var/www/certbot"   certbot/certbot certonly   --webroot   -w /var/www/certbot   -d mail.anvila.tech   --email callistusnkamuo@gmail.com   --agree-tos   --no-eff-email   -vv
```

```SH
docker run --rm -it   -v "/etc/letsencrypt/:/etc/letsencrypt"   -v "/etc/letsencrypt/logs:/var/log/letsencrypt"   -v "/var/www/certbot:/var/www/certbot"   certbot/certbot certonly   --webroot   -w /var/www/certbot   -d mail.anvila.tech   --email callistusnkamuo@gmail.com   --agree-tos   --no-eff-email   -vv
```
