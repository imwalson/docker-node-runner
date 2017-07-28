# docker-node-runner
# Wuyuxu
# VERSION               1.0.0

FROM node:6.2.1
MAINTAINER Wuyuxu "imwalson@163.com"

ENV HTTP_PORT 8000

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 8000
