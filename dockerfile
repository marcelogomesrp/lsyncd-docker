FROM alpine:3.12
LABEL maintainer="Marcelo Gomes de Paula"
RUN apk add --no-cache lsyncd
RUN mkdir -p /var/log/lsyncd/
COPY ./lsyncd.conf /etc/lsyncd/
VOLUME /source
VOLUME /target

ENTRYPOINT ["/usr/bin/lsyncd"]
CMD ["-nodaemon", "/etc/lsyncd/lsyncd.conf"]
#CMD ["-nodaemon", "-delay 0", "/etc/lsyncd/lsyncd.conf"]
#CMD /usr/bin/lsyncd -nodaemon -delay 0 /etc/lsyncd/lsyncd.conf
#exec /usr/bin/lsyncd -nodaemon -delay 0 /etc/lsyncd/lsyncd.conf

