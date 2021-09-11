FROM openjdk:8

COPY ./embulk /usr/bin/embulk
RUN chmod +x /usr/bin/embulk

ENTRYPOINT embulk
