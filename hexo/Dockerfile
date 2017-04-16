FROM node:alpine

WORKDIR /hexo

RUN \
  apk add --no-cache git openssh-client coreutils \
  && npm config set unsafe-perm true \
  && npm install yarn \
  && yarn global add hexo-cli \
  && hexo init . \
  && yarn install

VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

EXPOSE 4000

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/local/bin/hexo", "server", "--debug"]
