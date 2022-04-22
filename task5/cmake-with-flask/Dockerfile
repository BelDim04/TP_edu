FROM gcc:latest

RUN mkdir build && \
    cd build &&\
    cmake .. && \
    make

ADD build /opt/techprog/build


FROM ubuntu:latest

WORKDIR /opt/techprog/build

ENTRYPOINT ["/bin/C"]