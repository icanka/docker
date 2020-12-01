FROM gitlab/gitlab-ce:13.4.1-ce.0
#RUN rm /etc/nginx/conf.d/default.conf
#COPY conf/nginx.conf /etc/nginx/nginx.conf
#COPY conf/nginx-self-signed2.conf /etc/nginx/conf.d/test-jenkins-nginx.conf

RUN openssl req -x509 -nodes -days 365 \
    -newkey rsa:2048 -keyout /etc/ssl/certs/localhost-self-signed.key \
    -out /etc/ssl/certs/localhost-self-signed.crt -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com"



