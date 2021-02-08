FROM debian:10.5-slim

WORKDIR /root/

COPY . .

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install ca-certificates ddclient -y

RUN cat ddclient.conf_template > /etc/ddclient.conf && chmod 400 /etc/ddclient.conf

RUN rm ./ddclient.conf_template && rm ./Dockerfile && chmod 500 ./start && rm ./README.md

CMD ["./start"]


