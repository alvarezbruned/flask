 #FROM python:3.6-slim
FROM python:3.9-slim-buster

MAINTAINER Albert Alvarez

RUN pip install --upgrade pip
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY app.py /app
RUN chmod +x /app/app.py

ENV FLASK_APP=/app/app.py

EXPOSE 80

ENTRYPOINT ["python3","/app/app.py"]

