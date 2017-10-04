FROM steamcmd

USER root
RUN apt-get update && apt-get install -y xvfb

USER steam
WORKDIR /steam/steamcmd_linux
RUN mkdir -p /steam/dontstarve

RUN ./steamcmd.sh +login anonymous \
	+force_install_dir /steam/dontstarve \
	+app_update 343050 \
	validate \
	+quit

WORKDIR /steam/dontstave

COPY start-dontstarve.sh .

CMD ["./start-dontstarve.sh"]

