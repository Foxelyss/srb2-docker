FROM debian:latest

# Install required software and srb2
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y gcc make libpng-dev zlib1g-dev libsdl2-dev libsdl2-mixer-dev libgme-dev libopenmpt-dev libcurl4-openssl-dev pkg-config libminiupnpc-dev

COPY ./SRB2 /build
WORKDIR /build
RUN make

COPY ./base_game /SRB2
WORKDIR /SRB2

RUN mv /build/bin/lsdl2srb2 /SRB2/

# Setup volumes
VOLUME /config
VOLUME /addons
VOLUME /data

# Symlink for config
RUN ln -sf /addons /SRB2/addons

# Expose network port
EXPOSE 5029/udp

# Copy bash script and fix execute permission
COPY srb2.sh /usr/bin/srb2.sh
RUN chmod a+x /usr/bin/srb2.sh

# Set working directory
WORKDIR /SRB2

# Run script
#ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["srb2.sh"]
