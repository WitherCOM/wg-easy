FROM alpine:3.20

COPY ./overlay /

RUN apk add wireguard-tools-wg-quick && chmod +x /entrypoint.sh



ENTRYPOINT ["/entrypoint.sh"]