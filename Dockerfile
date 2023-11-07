FROM ubuntu:latest
RUN apt update
RUN apt install python3 -y
WORKDIR /test

COPY script.py ./
CMD ["python3","script.py"]