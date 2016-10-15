FROM ubuntu:14.04
MAINTAINER Daniel Guerra
RUN apt-get -yy update \
&& apt-get -yq install libx11-6 libx11-xcb1 libfontconfig1 supervisor xvfb x11vnc openbox nicotine \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN addgroup nicotine
RUN useradd -m -g nicotine nicotine
USER nicotine
EXPOSE 5900
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
