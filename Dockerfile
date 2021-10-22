FROM joemugen/datastore-dsui

WORKDIR /opt

ARG GUI_PORT=3000
ENV GUI_PORT=3000
ARG DATASTORE_PORT=8081
ENV DATASTORE_PORT=8081

RUN apk update && apk add nano

COPY config/supervisord/supervisord.conf /etc/
COPY config/bash/.bashrc /root
COPY config/scripts/imports.sh /opt

RUN chmod +x /opt/imports.sh
