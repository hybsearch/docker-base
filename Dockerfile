FROM docker.io/debian:stretch

ARG cores=4

# TODO MPI?
# TODO opencl?
# TODO NVIDIA?
# TODO add openjdk-8-jdk-headless if we want BEAST support

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       autoconf \
       automake \
       build-essential \
       ca-certificates \
       git \
       libtool \
       pkg-config \
    && rm -rfv /var/lib/apt/lists/*
