FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/jenkins.conf /etc/nginx/conf.d/jenkins.conf
COPY conf/nexus.conf /etc/nginx/conf.d/nexus.conf
COPY conf/gitlab.conf /etc/nginx/conf.d/gitlab.conf

RUN openssl req -x509 -nodes -days 365 \ 
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=TR/ST=Istanbul/L=Pendik/O=raflman/OU=IT Department/CN=jenkins.local" && \
    openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048


