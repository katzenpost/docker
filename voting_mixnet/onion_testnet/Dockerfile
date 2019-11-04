
FROM alpine

RUN apk update && \
    apk add --no-cache git make ca-certificates && \
    update-ca-certificates

RUN apk add libevent
RUN apk add tor

RUN echo "Log notice stdout" >> /etc/torrc
#RUN echo "SocksPort 0.0.0.0:9150" >> /etc/torrc
#EXPOSE 9150

WORKDIR /tor

# create a volume for the configuration persistence
VOLUME /home/user/testnet_onion_conf

#CMD tor -f /conf/torrc
ENTRYPOINT tor -f /conf/torrc
