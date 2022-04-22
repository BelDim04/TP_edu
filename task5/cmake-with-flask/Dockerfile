FROM gcc:latest

ADD ../cmake-with-flask /opt/techprog/cmake-with-flask

WORKDIR /opt/techprog/cmake-with-flask

RUN apt-get update && \
    apt-get install -y \
      cmake \
      make \
    && \
    mkdir build && \
    cd build &&\
    cmake .. && \
    make


FROM ubuntu:latest

WORKDIR /opt/techprog/cmake-with-flask/build

ENTRYPOINT ["/bin/C"]