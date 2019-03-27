# frpc for Dockerfile
FROM easypi/alpine-arm:latest
MAINTAINER ilee

ENV frpc_version=0.25.3 \
    frpc_DIR=/usr/local/frpc

RUN set -ex && \
    frpc_latest=https://github.com/fatedier/frp/releases/download/v${frpc_version}/frp_${frpc_version}_linux_arm.tar.gz && \
    frpc_latest_filename=frp_${frpc_version}_linux_arm.tar.gz && \
    sed -i 's/nl.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
    apk update && \
    apk upgrade && \
    apk add --no-cache pcre bash && \
    apk add --no-cache  --virtual TMP wget tar && \
    [ ! -d ${frpc_DIR} ] && mkdir -p ${frpc_DIR} && cd ${frpc_DIR} && \
    wget --no-check-certificate -q ${frpc_latest} -O ${frpc_latest_filename} && \
    tar -xzf ${frpc_latest_filename} && \
    mv frp_${frpc_version}_linux_arm/frpc ${frpc_DIR}/frpc && \
    apk --no-cache del --virtual TMP && \
    rm -rf /var/cache/apk/* ~/.cache ${frpc_DIR}/${frpc_latest_filename} ${frpc_DIR}/frp_${frpc_version}_linux_arm

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
