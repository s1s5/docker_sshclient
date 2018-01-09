FROM alpine:3.7
RUN apk add --no-cache openssh-client bash su-exec
ADD ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

