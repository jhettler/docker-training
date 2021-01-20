FROM python:3.8-buster

ARG TIMEZONE="Europe/Prague"

ENV TZ=$TIMEZONE

RUN mkdir work

WORKDIR /work

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

# ENTRYPOINT ["python"]

# CMD ["echo", "test"]