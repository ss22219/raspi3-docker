# whistle for Dockerfile(raspi3)
FROM easypi/alpine-arm:latest
MAINTAINER ilee

RUN set -ex && \
    apk update && \
    apk upgrade && \
    apk add --no-cache bash && \
    apk add --no-cache  nodejs-npm && \
    npm i -g whistle --registry=https://registry.npm.taobao.org

ENTRYPOINT ["w2", "run"]
