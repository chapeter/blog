FROM alpine
MAINTAINER Chad Peterson, chapeter@cisco.com

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh python py-pip

WORKDIR /home
RUN git clone http://github.com/chapeter/blog
WORKDIR blog
RUN pip install -r requirements.txt



ENTRYPOINT [ "python", "getuptime.py" ]