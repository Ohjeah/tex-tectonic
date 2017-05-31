FROM continuumio/miniconda3:latest

MAINTAINER info@markusqua.de


RUN apt-get update && \
    apt-get install \
    ruby-dev \
    ruby \
    gem \
    git \
    g++ \
    make \
    -y

RUN conda config --add channels conda-forge && \
    conda config --add channels pkgw-forge && \
    conda install tectonic -y
