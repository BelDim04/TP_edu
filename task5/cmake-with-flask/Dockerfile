FROM gcc:latest as build

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



FROM ubuntu:latest

RUN useradd tp2022user
USER tp2022user

COPY --from=build /opt opt/

WORKDIR /opt/techprog

CMD app.py --port 8898 --host $(cat ../../etc/hostname)

ENTRYPOINT bin/C