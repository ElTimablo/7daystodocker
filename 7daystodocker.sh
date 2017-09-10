#!/bin/bash
docker kill 7days
docker rm 7days
docker pull webhippie/steamcmd
docker run -dt -p 26900:26900 --name 7days webhippie/steamcmd
docker exec -ti 7days steamcmd +login anonymous +app_update 294420 +quit
docker cp ./serverconfig.xml 7days:/home/steam/Steam/steamapps/common/7\ Days\ to\ Die\ Dedicated\ Server/serverconfig.xml
docker exec -t 7days nohup home/steam/Steam/steamapps/common/7\ Days\ to\ Die\ Dedicated\ Server/startserver.sh -configfile=serverconfig.xml&
