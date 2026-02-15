FROM ubuntu:22.04

LABEL org.opencontainers.image.authors="guilleermo@dabest.com"


RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev \
    && rm -rf /var/lib/apt/lists/*

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN python3 -m pip install --no-cache-dir -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
