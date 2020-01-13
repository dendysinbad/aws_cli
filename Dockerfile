FROM alpine:latest

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8"
RUN apt install awscli -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
WORKDIR /
CMD ["/bin/sh"]
