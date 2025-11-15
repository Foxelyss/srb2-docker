# Latest Sonic Robo Blast Game Server in Docker image

Docker-compose for running a Sonic Robo Blast 2 dedicated server. Works with latest version of the game, aka 2.2.15

If you wanna help with server configuration, contact me via emailm send me your configuration to tests with mods!

## Usage

### Basic

How to run?

First you need environment with docker, docker-compose, wget and unzip utils, coreutils of course! 

1. `git clone https://github.com/foxelyss/srb2-docker.git`
2. `cd srb2-docker`
3. `bash setup.sh`
4. ```nano docker-compose.yml``` Edit this file to your liking - i.e. addons, server config...
5. ```docker-compose up -d```

Wait for the container to be built, and you'll be left with the stack 'SRB2' running in Docker. The console output will give you any and all important info regarding your dedicated server.

#### Requirements

All files and assets needed for the engine are getting automatically using `setup.sh`, so you don't need worry about it.

### Advanced

#### Configuration

UHHHHHHHHHHHHH, this part is not documented as it is must be fixed, **as well as introducing builder step ;)** _please contribute_

-----------------

For the server to save configuration data, bind the `/config` volume to a host directory.\
In order to configure server variables, create `adedserv.cfg`, and edit it. Documentation [here](https://wiki.srb2.org/wiki/Console/Variables#Server_options) at the SRB2 Wiki.

#### Addons

In order to load addons, bind the `/addons` volume to a host directory. The server should load them automatically the next time the container is created.
