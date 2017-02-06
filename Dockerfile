FROM ubuntu:latest
MAINTAINER Sivabudh Umpudh "sivabudh.u@codium.co"

RUN apt-get update -y
RUN apt-get install -y python-pip
RUN apt-get install -y python-dev
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y curl
RUN apt-get install -y telnet
RUN apt-get install -y net-tools
RUN pip install pgcli

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["flask-docker.py"]