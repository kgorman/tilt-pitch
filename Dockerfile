FROM ubuntu:20.10

# bring system up-to-date
RUN apt-get update && apt-get install -y
RUN apt-get update -y

RUN apt-get install -y openssl libssl-dev ssl-cert \
    iputils-ping python3-dev \
    curl python3-pip libbluetooth-dev

ADD . /tilt-pitch
WORKDIR /tilt-pitch

RUN python3 -V

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
