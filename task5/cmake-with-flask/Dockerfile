FROM gcc:latest

RUN apt-get update && \
    apt-get install -y \
      cmake \
      make \
    && \
    mkdir build && \
    cd build &&\
    cmake .. && \
    make

ADD build /opt/techprog/build


FROM ubuntu:latest

WORKDIR /opt/techprog/build

ENTRYPOINT ["/bin/C"]