FROM node:12.14.1-stretch-slim

ENV UID=1000
ENV GID=1000

ENV APP_ENV="dev"

WORKDIR /var/www/html

COPY rootfs /
RUN chmod +x /*.sh

VOLUME ["/var/www/html"]

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["yarn", "--help"]