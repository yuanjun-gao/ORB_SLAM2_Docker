FROM ros:melodic

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

RUN apt install -y libopencv-dev

RUN apt install -y python3-catkin-tools

COPY Pangolin /pangolin

WORKDIR /pangolin

RUN bash scripts/install_prerequisites.sh required

RUN mkdir build

WORKDIR /pangolin/build

RUN cmake ..

RUN make install

WORKDIR /root

RUN rm -r /pangolin
