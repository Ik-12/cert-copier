# Dockerfile for a copying SSL cert files to correct name for nginx proxy
FROM alpine:latest
MAINTAINER Ilkka Kujamaki ikujamaki@gmail.com

RUN apk update && apk upgrade && \
    apk add bash fswatch

COPY run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
