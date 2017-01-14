FROM ubuntu:14.04

RUN export DEBIAN_FRONTEND=noninteractive && \
        apt-get update -y && \
        apt-get install -y software-properties-common && \
        add-apt-repository ppa:bitcoin/bitcoin && \
        apt-get update && \
        apt-get install -y libdb5.3-dev libdb5.3++-dev && \
        apt-get install -y libminiupnpc-dev libgmp10 libcurl3-gnutls && \
        apt-get install -y bitcoind && \
        apt-get remove --purge -y software-properties-common && \
        apt-get autoremove -y && \
        apt-get clean

WORKDIR /home/root

RUN mkdir litecoin && \
    mkdir litecoin/data

ADD app/ litecoin/app/
ADD start.sh litecoin/app/start.sh
ADD litecoin.conf litecoin/data/litecoin.conf

WORKDIR /home/root/litecoin/app

EXPOSE 10398 10399

CMD ["/bin/bash"]
