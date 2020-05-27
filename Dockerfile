FROM ubuntu:focal
RUN apt-get update
CMD pip3 install coverage
CMD ["python3 -u run.py"]
