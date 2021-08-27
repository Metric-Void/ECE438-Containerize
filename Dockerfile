FROM ubuntu:16.04

COPY .bashrc /root/.bashrc

RUN apt-get update && \
    apt-get install -y openssh-server git gcc make gdb valgrind iperf tcpdump vim && \
    echo root:root | chpasswd && \
    sed -r "s/PermitRootLogin .*$/PermitRootLogin yes/" /etc/ssh/sshd_config > ./sshd_config && \
    cp ./sshd_config /etc/ssh/

WORKDIR /repo

CMD service ssh start && /bin/bash