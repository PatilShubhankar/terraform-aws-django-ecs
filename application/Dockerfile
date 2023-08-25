FROM python:3.10-slim-buster

EXPOSE 8000

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV DEBIAN_FRONTEND noninteractive

RUN pip install --no-cache-dir --upgrade pip
RUN pip install gunicorn==20.1.0

COPY requiremnt.txt /
RUN pip install --no-cache-dir -r /requiremnt.txt

WORKDIR /app
COPY . /app