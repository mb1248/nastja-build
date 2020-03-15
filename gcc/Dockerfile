FROM ubuntu:bionic

RUN apt update -qq && apt install --yes -qq \
    ccache \
    cmake \
    g++ \
    g++-7 \
    g++-8 \
    doxygen \
    git \
    graphviz \
    lcov \
    jq \
    ninja-build \
    openmpi-bin \
    pkgconf \
    qpdf \
    rsync \
    xsltproc \
    xmlstarlet \
    libc++-dev \
    libfftw3-dev \
    libfltk1.3-dev \
    libopenmpi-dev \
    libomp-dev \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

CMD bin/bash
