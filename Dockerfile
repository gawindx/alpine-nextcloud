FROM nimmis/alpine-micro

MAINTAINER gawindx <decauxnico@gmail.com>

RUN apk update && apk upgrade && \
    apk add nginx && \
    apk add php7 && \
    apk add nextcloud-sqlite

COPY rootfs /

VOLUME /html

EXPOSE 80 443
