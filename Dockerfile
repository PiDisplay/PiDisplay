FROM python:3.9-slim

RUN pip3 install googleapis-common-protos python-bitcoinrpc grpcio

# Creates a director for the app
RUN mkdir /app

WORKDIR /app

# Copies your app into /app
COPY . .

CMD ["python3", "main.py"]
