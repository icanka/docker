FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/nginx-self-signed2.conf /etc/nginx/conf.d/test-jenkins-nginx.conf
RUN openssl req -x509 -nodes -days 365 \ 
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=TR/ST=Istanbul/L=Pendik/O=raflman/OU=IT Department/CN=jenkins.local" && \
    openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048


