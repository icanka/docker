FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y vim sshpass && \
    ssh-keyscan remote-host && \
    ssh-keygen -q -t rsa -N '' -f /root/.ssh/id_rsa && \
    sshpass -p "1234" ssh-copy-id remote_user@remote-host
