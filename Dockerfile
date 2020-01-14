FROM python:3.6-slim
MAINTAINER Albert Alvarez

RUN mkdir -p /app
RUN echo "Flask==1.0.2" >> /app/requirements.txt
RUN echo "requests" >> /app/requirements.txt
RUN echo "random-word==1.0.4" >> /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY app.py /app
RUN chmod +x /app/app.py

ENV FLASK_APP=/app/app.py

EXPOSE 80

ENTRYPOINT ["python3","/app/app.py"]

