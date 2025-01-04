FROM ubuntu

LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"

USER root

COPY ./entrypoint.bash /entry.bash
RUN apt -y update
RUN apt -y install curl bash
RUN chmod +x /entry.bash

USER nobody

ENTRYPOINT [ "/entry.bash" ] 

