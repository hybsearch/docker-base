FROM docker.io/debian:stretch-slim

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
    && apt-get clean autoclean \
    && rm -rfv /var/lib/apt/ \
               /var/lib/dpkg/ \
               /var/lib/cache/ \
               /var/lib/log/
