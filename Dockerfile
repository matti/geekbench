FROM ubuntu:17.04
RUN apt-get update
RUN apt-get install -y wget

WORKDIR /app
RUN wget http://cdn.primatelabs.com/Geekbench-4.1.0-Linux.tar.gz
RUN tar -xvf Geekbench-4.1.0-Linux.tar.gz
RUN mv build.pulse/dist/Geekbench-4.1.0-Linux/* .
RUN rm -rf build.pulse && rm -rf Geekbench-4.1.0-Linux.tar.gz

ENTRYPOINT ["/app/geekbench4"]
