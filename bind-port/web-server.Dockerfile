FROM ubuntu
LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"

USER root
COPY ./web-server.bash /server.bash

RUN apt -y update
RUN apt -y install bash netcat-openbsd
RUN chmod +x /server.bash

USER nobody

ENTRYPOINT [ "/server.bash" ]
