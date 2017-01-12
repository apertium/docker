FROM ubuntu:latest
MAINTAINER sushain@skc.name

RUN apt-get --yes update && apt-get --yes install wget apt-utils

RUN wget https://apertium.projectjj.com/apt/install-nightly.sh -O - | bash

RUN apt-get --yes update && apt-get --yes --fix-broken install \
	locales \
	build-essential \
	automake \
	subversion \
	pkg-config \
	gawk \
	libtool \
	apertium-all-dev

RUN wget https://raw.githubusercontent.com/unhammer/apertium-get/master/apertium-get
RUN chmod +x apertium-get
RUN ./apertium-get en-es

CMD cd apertium-en-es && echo 'Hello world!' | apertium -d . en-es
