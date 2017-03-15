FROM alpine:edge
RUN (apk update || true) \
      &&  apk add ca-certificates \
      && update-ca-certificates \
      && apk add docker \
      && apk add bash \
      && rm -rf /var/cache/apk/*
CMD ["bash"]
