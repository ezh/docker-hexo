FROM node:alpine

WORKDIR /hexo

RUN \
  apk add --no-cache git openssh-client \
  && npm config set unsafe-perm true \
  && npm install hexo-cli -g \
  && hexo init . \
  && npm install

VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

EXPOSE 4000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ['/usr/local/bin/hexo', 'server']
