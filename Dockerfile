# syntax=docker/dockerfile:1

FROM python:

WORKDIR /src
COPY . .

RUN pip3 install -r requirements.txt

CMD ["greppo", "serve", "app.py", "--host=0.0.0.0"]
