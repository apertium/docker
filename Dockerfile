FROM debian:jessie-slim
LABEL maintainer sushain@skc.name
ENV LANG C.UTF-8

RUN apt-get -qq update && apt-get -qq install apt-utils wget

ADD https://apertium.projectjj.com/apt/install-nightly.sh .
RUN bash install-nightly.sh

RUN apt-get -qq update && apt-get -qq install \
	build-essential \
	automake \
	pkg-config \
	gawk \
	libtool \
	apertium-all-dev \
	apertium-en-es

ENTRYPOINT ["apertium"]
CMD ["en-es"]
