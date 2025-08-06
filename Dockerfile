FROM alpine:latest

# Install common networking + system tools
RUN apk add --no-cache \
    bash \
    curl \
    bind-tools \
    iputils \
    traceroute \
    net-tools \
    socat \
    tcpdump \
    iproute2 \
    openbsd-netcat \
    less \
    nano \
    procps \
    grep \
    coreutils

# Set a default hostname for standalone container runs (won't affect K8s)
ENV HOSTNAME alpine-toolbox

# Customize bash profile
RUN echo '\
alias ll="ls -lasht --color=auto"\n\
alias la="ls -A --color=auto"\n\
alias l="ls -CF --color=auto"\n\
alias ..="cd .."\n\
alias ...="cd ../.."\n\
PS1="\\[\e[1;32m\\][\u@alpine-toolbox \\W]\\$ \\[\e[0m\\]"\n\
clear\n\
echo -e "\e[1;34m🛠️  Welcome to the alpine-toolbox pod!\e[0m"\n\
echo "You have curl, dig, traceroute, nc, tcpdump, ip, etc. Ready to go."\n\
echo "Example commands: curl -vk --connect-timeout 10 https://$KUBERNETES_SERVICE_HOST:443/version "
echo 'curl -vk --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt -H "Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" --connect-timeout 10   https://$KUBERNETES_SERVICE_HOST:443/api/v1/nodes '
echo "curl -vk http://servicename.namespace.svc:port/path/to/metrics"

' >> /etc/profile

CMD ["bash"]