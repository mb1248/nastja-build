From nvidia/cuda:10.1-devel-ubuntu18.04

RUN apt update -qq && apt install --yes -qq \
    git \
    openmpi-bin \
    libopenmpi-dev \
    ninja-build \
    jq \
    qpdf \
    xmlstarlet \
    xsltproc \
    g++-8 \
    clang-7 \
    clang-8 \
    libfftw3-dev \
    python3 \
    python3-pip \
    wget

RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz \
&& tar -zxvf cmake-3.15.2.tar.gz \
&& cd cmake-3.15.2 \
&& ./bootstrap \
&& make -j8 \
&& make install \

RUN pip3 install \
    numpy \
    pandas \
    numba \
    vtk

CMD bin/bash
