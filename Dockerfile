# FROM ubuntu:16.04
FROM python:3.6.8-alpine3.8

LABEL MAINTAINER "rawat.kiran111@gmail.com"

WORKDIR /project

ADD . /project

RUN pip install -r requirement.txt
EXPOSE 5000
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
CMD ["flask", "run", "--host", "0.0.0.0"]