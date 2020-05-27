FROM ubuntu:focal
RUN apt-get update
CMD pip3 install coverage
CMD ["matchbox-window-manager > /dev/null 2>&1 & python3 -u run.py"]
