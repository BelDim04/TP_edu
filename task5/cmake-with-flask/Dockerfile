FROM gcc:latest as build

RUN apt-get update && \
    apt-get install -y \
      cmake \
      make \
      python

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

CMD python ./app.py --port 8898 --host 0.0.0.0

ENTRYPOINT bin/C