FROM alpine

RUN apk update && apk add socat

EXPOSE 2375

CMD socat -T300 TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
