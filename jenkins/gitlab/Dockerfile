<<<<<<< HEAD
FROM gitlab/gitlab-ce:13.4.1-ce.0

RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key \
        -out /etc/ssl/certs/localhost.crt -subj "/C=TR/ST=Istanbul/L=Pendik/O=raflman/OU=IT Department/CN=jenkins.local" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048





RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/docker-registry.key \
        -out /etc/ssl/certs/docker-registry.crt -subj "/C=TR/ST=Istanbul/L=Pendik/O=raflman/OU=IT Department/CN=jenkins.local" \
        -addext "subjectAltName = DNS:jenkins.local" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048



=======
FROM gitlab/gitlab-ce:13.10.0-ce.0
# Subgit version
ENV SUBGIT_VERSION 3.3.11


RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key \
        -out /etc/ssl/certs/localhost.crt -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com=" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

RUN openssl req -x509 -nodes -days 365 \
        -newkey rsa:2048 -keyout /etc/ssl/private/docker-registry.key \
        -out /etc/ssl/certs/docker-registry.crt -subj "/C=UK/ST=Warwickshire/L=Leamington/O=OrgName/OU=IT Department/CN=example.com" \
        -addext "subjectAltName = DNS:example.com" && \
        openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

# Install Java
RUN apt-get update && \
    apt-get install -y openjdk-8-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*

# Download subgit from official website and install
RUN curl -o subgit.deb -q https://subgit.com/files/subgit_${SUBGIT_VERSION}_all.deb && \
    dpkg -i subgit.deb && \
    rm -fr subgit.deb

# Fix SNI error with Java 7
RUN sed -i '/^EXTRA_JVM_ARGUMENTS.*/a EXTRA_JVM_ARGUMENTS="$EXTRA_JVM_ARGUMENTS -Djsse.enableSNIExtension=false"' /usr/bin/subgit

# Our wrapper script (enabling cron, and then launching GitLab's wrapper)
COPY assets/outerwrapper /assets/

# Define data volumes
VOLUME ["/etc/gitlab", "/etc/subgit", "/etc/cron.d", "/var/opt/gitlab", "/var/log/gitlab"]

# Wrapper to handle signal, trigger runit and reconfigure GitLab

CMD ["/assets/outerwrapper"]
>>>>>>> multiple-host
