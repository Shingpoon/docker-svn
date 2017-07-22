FROM ubuntu:16.04 

RUN sed -i 's/archive.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list \
       && sed -i 's/security.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list \
       && apt update \
       && apt install -y subversion \
       && apt-get purge locales \
	&& apt-get autoclean \
	&& apt-get install locales \
	&& cd /usr/share/locales \
	&& ./install-language-pack en_US.UTF-8 \
	&& export LC_ALL=en_US.UTF-8


