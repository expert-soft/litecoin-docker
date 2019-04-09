FROM ubuntu:14.04
RUN mkdir /home/user_LTC
WORKDIR /home/user_LTC
RUN mkdir coin_base && \
    mkdir coin_base/data
ADD app/ coin_base/app/
ADD start.sh coin_base/app/start.sh
RUN chmod -R +x coin_base/app/*
WORKDIR /home/user_LTC/coin_base/app
EXPOSE 9332
CMD ["/bin/bash"]

