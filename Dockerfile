FROM alpine:3.11.12
LABEL maintainer "terje.sannum@nav.no"

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk --no-cache add --update sysstat
ENV SLEEP 10
COPY iostat.sh /

CMD ["/iostat.sh"]
