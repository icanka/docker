FROM gitlab/gitlab-ce:13.4.1-ce.0

RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key \
        -out /etc/ssl/certs/localhost.crt -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com=" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048





RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/docker-registry.key \
        -out /etc/ssl/certs/docker-registry.crt -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com" \
        -addext "subjectAltName = DNS:example.com" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048



