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

RUN mkdir -p /home/steam/.klei/DoNotStarveTogether/LocalNetworkServer
WORKDIR /home/steam/.klei/DoNotStarveTogether/LocalNetworkServer

COPY cluster_token.txt .
COPY cluster.ini .

RUN mkdir -p Master Caves

COPY master.ini Master/server.ini
COPY caves.ini Caves/server.ini

WORKDIR /steam/dontstarve

COPY start-dontstarve.sh .

CMD ["./start-dontstarve.sh"]
