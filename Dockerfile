FROM alpine
MAINTAINER Chad Peterson, chapeter@cisco.com

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh python py-pip

WORKDIR /home

CMD 


RUN git clone http://github.com/chapeter/acidash
WORKDIR acidash

EXPOSE 5000
CMD [ "python", "main.py" ]
