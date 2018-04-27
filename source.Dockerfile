FROM apertium/base:latest
LABEL maintainer sushain@skc.name

RUN apt-get -qq update && apt-get -qq install build-essential
