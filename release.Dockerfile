FROM debian:jessie-slim
LABEL maintainer sushain@skc.name
ENV LANG C.UTF-8

ADD https://apertium.projectjj.com/apt/apertium-packaging.public.gpg /etc/apt/trusted.gpg.d/apertium.gpg
ADD https://apertium.projectjj.com/apt/apertium.pref /etc/apt/preferences.d/apertium.pref
RUN echo "deb http://apertium.projectjj.com/apt/release jessie main" > /etc/apt/sources.list.d/apertium.list

RUN apt-get -qq update && apt-get -qq install apertium-all-dev

ENTRYPOINT ["apertium"]
