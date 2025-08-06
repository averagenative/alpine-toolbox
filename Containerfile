FROM alpine:latest

RUN apk add --no-cache \
    bash \
    vim \
    nmap \
    jq \
    file \
    httpie \
    ngrep \
    nmap \
    git \
    tcptraceroute \
    nmap-nping \
    nmap-scripts \
    openssl \
    py3-pip \
    py3-setuptools \
    scapy \
    socat \
    speedtest-cli \
    openssh \
    curl \
    bind-tools \
    iputils \
    traceroute \
    net-tools \
    socat \
    tcpdump \
    iproute2 \
    netcat-openbsd \
    less \
    nano \
    procps \
    grep \
    coreutils \
    ripgrep

USER root
WORKDIR /root
ENV HOSTNAME alpine-toolbox

# Use shell-safe heredoc with escaping handled cleanly
RUN curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash

COPY bashrc .bashrc
COPY motd motd

RUN chmod -R g=u /root

CMD ["bash"]
