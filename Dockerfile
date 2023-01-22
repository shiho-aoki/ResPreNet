FROM python:3.7

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y --no-install-recommends \
        git \
        make \
        build-essential \
        vim \
        curl \
        python3-pip

# Env vars
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Update python
RUN python -m pip install --upgrade pip setuptools wheel --no-cache-dir
#libs
RUN python -m pip install numba tourch

WORKDIR /usr/app/