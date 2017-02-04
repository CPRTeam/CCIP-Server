FROM python:3.5
MAINTAINER Denny Huang

COPY ./requirements.txt /requirements.txt
COPY ./app /app

RUN pip install --no-cache-dir -r /requirements.txt

EXPOSE 5000
WORKDIR /app
ENV FLASK_APP ccip.py
CMD ["/usr/local/bin/flask", "run", "--host=0.0.0.0"]
