FROM onitsoft/coin-base:latest
ADD app/ $COIN_BASE/app/
RUN chmod -R +x $COIN_BASE/app/*
RUN chown -R coin:coin $COIN_BASE
USER coin
CMD ["/bin/bash"]
