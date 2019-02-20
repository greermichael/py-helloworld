FROM python:3.6.5

RUN mkdir -p /k8s_python/src

WORKDIR /k8s_python/src

COPY ./src .

# Application Environment variables
ENV APP_ENV development

# Exposing Ports
EXPOSE 8081

# Setting Persistent data
VOLUME ["/app-data"]

# Running Python Application
CMD ["python", "./webserver.py"]