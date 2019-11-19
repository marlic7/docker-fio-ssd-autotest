FROM ubuntu:bionic-20191029

RUN apt-get update && apt-get install -y fio --no-install-recommends \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /fio

COPY ssd-test.fio /fio/

WORKDIR /fio 

CMD [ "fio", "ssd-test.fio" ]


