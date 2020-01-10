FROM alpine:3.8

ENV UID=1000
ENV GID=1000

ENV APP_ENV="dev"

#Install Yarn
RUN apk add yarn

RUN addgroup --gid $GID node && \
    adduser --uid $UID -D -G node node

WORKDIR /var/www/html

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

VOLUME ["/var/www/html"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["yarn", "--help"]