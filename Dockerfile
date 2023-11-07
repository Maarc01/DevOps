FROM ubuntu:latest
RUN apt update
RUN apt install python3 -y
WORKDIR /test

COPY script.py ./
COPY entryPoint.sh ./
RUN chmod u+x entrypoint.sh
RUN chmod 777 entrypoint.sh
Entrypoint ["/bin/sh","./entrypoint.sh"]