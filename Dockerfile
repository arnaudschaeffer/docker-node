FROM alpine:3.11

ENV UID=1000
ENV GID=1000

ENV APP_ENV="dev"

#Install Yarn
RUN apk add yarn shadow

RUN addgroup --gid $GID node && \
    adduser --uid $UID -D -G node node

WORKDIR /var/www/html

COPY rootfs /
RUN chmod +x /*.sh

VOLUME ["/var/www/html"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["yarn", "--help"]