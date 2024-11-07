FROM phusion/baseimage:focal-1.0.0
LABEL maintainer="Gryphonmoon Developers <dev@gryphonmoon.org>"
LABEL description="Dockerised GryphonmoonCore, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /home/gryphonmoon

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} gryphonmoon && \
    useradd -u ${USER_ID} -g gryphonmoon -s /bin/bash -m -d /home/gryphonmoon gryphonmoon && \
    mkdir /home/gryphonmoon/.gryphonmooncore && \
    chown ${USER_ID}:${GROUP_ID} -R /home/gryphonmoon

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER gryphonmoon

VOLUME ["/home/gryphonmoon"]

EXPOSE 9968 9969 19968 19969

WORKDIR /home/gryphonmoon
