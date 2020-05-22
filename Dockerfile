FROM ubuntu:focal
RUN apt-get update
CMD pip3 install coverage
