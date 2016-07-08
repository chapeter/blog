FROM chapeter/alpine
MAINTAINER Chad Peterson, chapeter@cisco.com

WORKDIR /home
RUN git clone http://github.com/chapeter/blog
WORKDIR blog
RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "getuptime.py" ]
