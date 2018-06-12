FROM debian:9 as builder

RUN apt-get update && apt-get install cmake libssl-dev build-essential git -y

COPY . /tmp/odyssey

WORKDIR /tmp/odyssey

RUN mkdir build

WORKDIR /tmp/odyssey/build

RUN cmake -DBUILD_DEBIAN=ON -DCMAKE_BUILD_TYPE=Release ..

RUN make -j
