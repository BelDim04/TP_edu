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



FROM python:3.8

RUN pip3 install Flask

RUN useradd tp2022user
USER tp2022user

COPY --from=build /opt opt/

WORKDIR /opt/techprog

CMD python3 ./app.py --port 8898 --host 0.0.0.0 && bin/C