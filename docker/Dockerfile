FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
  git \
  build-essential \
  bison \
  flex \
  gperf \
  gtkwave  \
  autoconf \
  dbus-x11 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Installation of Icarus Verilog (latest)
RUN git clone https://github.com/steveicarus/iverilog.git && cd iverilog && \
  sh ./autoconf.sh && ./configure && \
  make && make install && \
  cd .. && rm -rf iverilog
