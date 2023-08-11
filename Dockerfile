# Dockerfile for a copying SSL cert files to correct name for nginx proxy
FROM bitnami/minideb
MAINTAINER Ilkka Kujamaki ikujamaki@gmail.com

RUN apt update && apt upgrade && \
    install_packages bash fswatch

COPY run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
