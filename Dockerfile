FROM ubuntu:18.04

RUN mkdir /app_home

# antの前にopenjdk-8をインストール
RUN apt update \
  && apt install -y --no-install-recommends \
       make \
       openjdk-8-jdk-headless

RUN apt install -y -y --no-install-recommends \
    gcc javacc ant libc6-dev-i386