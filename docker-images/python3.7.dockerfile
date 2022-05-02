FROM tiangolo/uvicorn-gunicorn:python3.7

LABEL maintainer="Sebastian Ramirez <tiangolo@gmail.com>"

COPY requirements-deployment.txt /tmp/requirements-deployment.txt
RUN pip install --no-cache-dir -r /tmp/requirements-deployment.txt

COPY ./app /app
