#######################
# MQTT for Dockerfile #
#######################
FROM easypi/alpine-arm:latest
MAINTAINER ilee

RUN set -ex && \
    apk update && \
    apk upgrade && \
    apk add --no-cache  bash vim && \
    apk add --no-cache  mosquitto mosquitto-clients

EXPOSE 1883

ENTRYPOINT ["mosquitto"]
