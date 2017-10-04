FROM steamcmd

USER root
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y libstdc++6:i386 libcurl4-gnutls-dev:i386

USER steam
WORKDIR /steam/steamcmd_linux
RUN mkdir -p /steam/dontstarve

RUN ./steamcmd.sh +login anonymous \
	+force_install_dir /steam/dontstarve \
	+app_update 343050 \
	validate \
	+quit

WORKDIR /steam/dontstarve

COPY start-dontstarve.sh .

CMD ["./start-dontstarve.sh"]

