FROM ubuntu:16.04

MAINTAINER Punit <punitporwal07@gmail.com>

ARG JAVA_HOME

RUN useradd red && groupadd redgrp

WORKDIR /software/java/jdk1.8.0_131
COPY jdk1.8.0_131 /software/java/jdk1.8.0_131
ENV JAVA_HOME=/software/java/jdk1.8.0_131/bin
ENV PATH=$PATH:$JAVA_HOME

RUN chown -R red:redgrp /software/

#CMD ["/software/java/jdk1.8.0_131/bin/java", "-version"]
