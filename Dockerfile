# docker-node-runner
# Wuyuxu
# VERSION               1.0.0

FROM node:6.2.1
MAINTAINER Wuyuxu "imwalson@163.com"

ENV HTTP_PORT 8000

VOLUME ["/app"]
WORKDIR /app

RUN npm --registry=https://registry.npm.taobao.org --disturl=https://npm.taobao.org/dist install

EXPOSE 8000

CMD ["npm", "start"]