FROM ubuntu:bionic

RUN apt update -qq && apt install --yes -qq \
    ccache \
    cmake \
    clang \
    clang-7 \
    clang-8 \
    clang-9 \
    doxygen \
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

RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-6.0 10
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-7 10
RUN update-alternatives --set clang++ "/usr/bin/clang++-7"

RUN update-alternatives --set c++ "/usr/bin/clang++"

RUN pip3 install numpy
RUN pip3 install pandas
RUN pip3 install numba

CMD bin/bash
