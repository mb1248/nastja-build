From nvidia/cuda:11.4.2-devel-ubuntu20.04

# configuration to stop tzdata from asking for the location
RUN export DEBIAN_FRONTEND=noninteractive
RUN ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime

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
    libgl1-mesa-glx \
    libsm6 \
    python3 \
    python3-pip \
    python3-venv \
    wget

RUN wget https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz \
&& tar -zxvf cmake-3.15.2.tar.gz \
&& cd cmake-3.15.2 \
&& ./bootstrap \
&& make -j8 \
&& make install

RUN pip3 install \
    numpy \
    pandas \
    vtk

CMD bin/bash
