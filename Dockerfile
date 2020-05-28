FROM ubuntu:focal
ADD run.py /run.py
RUN apt-get update
RUN apt-get update && apt-get install --no-install-recommends -y \
    xvfb \
    matchbox-window-manager

RUN apt-get update && apt-get install --no-install-recommends -y \
  clang-format \
  cppcheck \
  git \
  libbullet-dev \
  liblog4cxx-dev \
  libxml2-dev \
  libxml2-utils \
  libxslt-dev \
  pydocstyle \
  pyflakes \
  python3-coverage \
  python3-cryptography \
  python3-flake8 \
  python3-lxml \
  python3-mock \
  python3-mypy \
  python3-netifaces \
  python3-nose \
  python3-numpy \
  python3-pep8 \
  python3-pyparsing \
  python3-pytest-mock \
  python3-yaml \
  uncrustify
CMD pip3 install coverage
CMD python3 run.py
