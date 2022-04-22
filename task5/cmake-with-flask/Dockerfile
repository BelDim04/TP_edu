FROM ubuntu:latest

RUN useradd tp2022user
USER tp2022user


FROM gcc:latest

RUN apt-get update && \
    apt-get install -y \
      cmake \
      make

ADD ./ /opt/techprog/

WORKDIR /opt/techprog/

RUN mkdir build && \
    cd build &&\
    cmake .. && \
    make

ENTRYPOINT ["bin/C"]