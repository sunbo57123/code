FROM ubuntu:focal
RUN apt-get update
RUN apt-get update && apt-get install --no-install-recommends -y \
    xvfb \
    matchbox-window-manager
CMD pip3 install coverage
CMD ["matchbox-window-manager > /dev/null 2>&1 & python3 -u run.py"]
