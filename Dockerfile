
#ubuntu
FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
ENV GIT_SSL_NO_VERIFY=1
ENV FORCE_UNSAFE_CONFIGURE=1

ENV LANG zh_CN.UTF-8
ENV LANGUAGE zh_CN:zh
ENV LC_ALL zh_CN.UTF-8
ENV LC_ALL="C.UTF-8" LANG="C.UTF-8"

RUN apt-get -y update --fix-missing && \
    apt-get install -y \
    openjdk-8-jdk \
    ca-certificates-java \
    && apt-get clean

RUN java -version

CMD [ "/bin/bash" ]
