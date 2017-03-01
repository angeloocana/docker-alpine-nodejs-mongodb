#Alpine based Nodejs container
FROM angeloocana/alpine-nodejs:0.2

#created by angeloocana.com.br
MAINTAINER angeloocana@gmail.com

RUN echo 'http://dl-3.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk upgrade --update && \ 
    apk add mongodb

VOLUME /data/db

CMD ["mongod"]


