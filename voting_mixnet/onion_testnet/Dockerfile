
FROM alpine

RUN apk update && \
    apk add --no-cache git make ca-certificates && \
    update-ca-certificates

RUN apk add tor

RUN echo "Log notice stdout" >> /etc/torrc
WORKDIR /tor

VOLUME /conf

ENTRYPOINT tor -f /conf/torrc
