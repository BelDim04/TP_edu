FROM gcc:latest

ADD ./ /opt/techprog/

WORKDIR /opt/techprog/

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

WORKDIR /opt/techprog/build/bin

ENTRYPOINT ["./C"]