FROM node:14-alpine

ENV REDOC_VERSION=0.11.2

RUN npm i -g redoc-cli@${REDOC_VERSION}

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
