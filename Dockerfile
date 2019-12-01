FROM python:3

MAINTAINER ALbert Alvarez

RUN mkdir -p /app
RUN echo "Flask==1.0.2" >> /app/requirements.txt
RUN echo "requests" >> /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY app.py /app
RUN chmod +x /app/app.py

ENV FLASK_APP=/app/app.py

ENTRYPOINT ["python"]
CMD ["app.py"]
