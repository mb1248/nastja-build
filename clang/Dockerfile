FROM ubuntu:bionic

RUN apt update -qq && apt install --yes -qq \
    ccache \
    cmake \
    clang \
    clang-7 \
    clang-8 \
    clang-9 \
    curl \
    doxygen \
    g++ \
    g++-7 \
    g++-8 \
    git \
    graphviz \
    lcov \
    llvm-9 \
    ninja-build \
    jq \
    openmpi-bin \
    pkgconf \
    qpdf \
    rsync \
    unzip \
    xsltproc \
    xmlstarlet \
    libboost-mpi-dev \
    libc++-7-dev \
    libstdc++6-8-dbg \
    libfftw3-dev \
    libfltk1.3-dev \
    libopenmpi-dev \
    libomp-dev \
    python3 \
    python3-pip \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install \
    numpy \
    pandas \
    numba \
    vtk

CMD bin/bash
