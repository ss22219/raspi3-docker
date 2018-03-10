# kms for Dockerfile
FROM resin/raspberrypi3-alpine-python:2.7.13
MAINTAINER ilee

RUN set -ex && \
    sed -i 's/nl.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash git && \
    rm -rf /var/cache/apk/* ~/.cache

WORKDIR /usr/local
RUN git clone https://github.com/SystemRage/py-kms.git

EXPOSE 1688
ADD entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
