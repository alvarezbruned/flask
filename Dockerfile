FROM python:3.7.4

MAINTAINER Albert Alvarez

RUN pip install --upgrade pip
RUN mkdir -p /application
WORKDIR /application
COPY requirements1.txt /application/requirements1.txt
RUN pip install -r requirements1.txt
COPY run.py /application
RUN chmod +x /application/run.py

ENV FLASK_APP=/application/run.py

EXPOSE 80

ENTRYPOINT ["python3","/application/run.py"]

