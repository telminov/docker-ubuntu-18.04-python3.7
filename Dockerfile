FROM ubuntu:18.04

RUN apt-get clean && apt-get update && apt-get install -y \
        build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev \
        libgdbm-dev libc6-dev libbz2-dev zlib1g-dev openssl libffi-dev libjpeg-dev \
        python3-dev python3-setuptools python3-pip wget gcc \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /tmp/Python37; \
    cd /tmp/Python37; \
    wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz; \
    tar xvf Python-3.7.4.tar.xz; \
    cd /tmp/Python37/Python-3.7.4; \
    ./configure; \
    make install; \
    cd /; \
    rm -rf /tmp/Python37
