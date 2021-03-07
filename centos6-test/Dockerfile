FROM centos:6.10


RUN rm -rf /etc/yum.repos.d/* && \
    rm -rf /etc/yum.conf

COPY CentOS-Vault.repo /etc/yum.repos.d/
COPY yum.conf /etc/yum.conf

RUN yum -y update && \
    yum -y install man && \
    yum -y install man-pages && \
    yum -y install openssh-server && \
    yum -y install python && \
    yum -y install createrepo && \
    yum -y install yum-utils

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys
RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys
    #ssh-keygen

RUN curl -O https://bootstrap.pypa.io/2.6/get-pip.py && \
    python get-pip.py

#ENTRYPOINT MAYBE?
CMD /usr/sbin/sshd -D
