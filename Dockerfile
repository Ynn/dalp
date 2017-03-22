FROM alpine:edge

RUN (apk update || true) \
      &&  apk add ca-certificates \
      && update-ca-certificates \
      && apk add docker \
      && apk add bash \
      && apk add su-exec \
      && apk add py-pip \
      && apk add git \
      && apk add sudo \
      && rm -rf /var/cache/apk/*

RUN pip install docker-compose
CMD ["bash"]
