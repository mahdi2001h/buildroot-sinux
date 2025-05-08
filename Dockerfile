FROM focker.ir/ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    locales \
    libncurses5-dev \
    libdevmapper-dev \
    libsystemd-dev \
    make \
    mercurial \
    whois \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    vim \ 
    unzip \
    wget \
    bison \
    flex \
    libssl-dev \
    libfdt-dev \
    swig \
    libncurses-dev \
    libpython3-dev \
    python3-distutils


RUN ["/bin/bash"]
