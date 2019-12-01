from jazzdd/alpine-flask:python3

RUN pip install --upgrade pip
RUN pip3 install requests

FROM python:3

