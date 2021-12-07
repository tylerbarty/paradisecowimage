FROM debian:latest
MAINTAINER Mr. Donut<donutman@gmail.com>

RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y cowsay \
	&& useradd --uid 666 -m --shell /usr/sbin/nologin donuteater 
ADD menu.sh /
RUN ["chmod", "+x", "menu.sh"]

USER donuteater
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

CMD ["/menu.sh"]
