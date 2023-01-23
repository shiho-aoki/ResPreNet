FROM pytorch/pytorch:v0.2

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt-get install -y --no-install-recommends \
        git \
        make \
        build-essential \
        vim \
        curl

# Env vars
ENV PYTHONIOENCODING=utf-8
ENV LANG=C.UTF-8

# Update python
# RUN python -m pip install --upgrade pip setuptools wheel --no-cache-dir
#libs

RUN pip install scipy
RUN pip install llvmlite==0.31.0
RUN pip install numba

WORKDIR /usr/app/