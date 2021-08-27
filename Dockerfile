FROM ubuntu:16.04

COPY .bashrc /root/.bashrc

RUN apt-get update && \
    apt-get install -y openssh-server git gcc make gdb valgrind iperf tcpdump

WORKDIR /repo