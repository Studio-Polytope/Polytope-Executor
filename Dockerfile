FROM ubuntu:18.04

WORKDIR /home

RUN \
        apt-get update && apt update && \
        apt install -y software-properties-common
RUN \
        add-apt-repository -y ppa:jonathonf/gcc && \
        add-apt-repository -y ppa:deadsnakes/ppa && \
        apt-get update && apt update
RUN \
        apt-get install -y gcc-7 gcc-8 gcc-9 && \
        apt-get install -y g++-7 g++-8 g++-9 && \
        apt install -y python3.6 python3.7 python3.8
RUN \
        apt install -y git build-essential libcap-dev && \
        git clone https://github.com/ioi/isolate && \
        cd isolate && make install && isolate --init && \
        cd .. && rm -rf isolate
RUN \
        git clone https://github.com/MikeMirzayanov/testlib && \
        cp testlib/testlib.h testlib.h && \
        cp -r testlib/checkers checkers && \
        rm -rf testlib
RUN \
        mkdir share

CMD ["/bin/bash"]
