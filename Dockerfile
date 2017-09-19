FROM ubuntu:xenial

RUN apt-get update -qq && apt-get install --yes -qq \
    git \
    cmake \
    clang \
    doxygen \
    libboost-mpi-dev \
    libc++-dev \
    libhdf5-openmpi-dev \
    libfftw3-dev \
    libopenmpi-dev \
    libgsl-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN update-alternatives --set c++ "/usr/bin/clang++"

RUN cd /tmp \
 && git clone https://github.com/open-source-parsers/jsoncpp.git \
 && mkdir -p jsoncpp/build \
 && cd jsoncpp/build \
 && cmake .. \
 && make \
 && make install \
 && cd /tmp \
 && rm -r jsoncpp

CMD bin/bash
