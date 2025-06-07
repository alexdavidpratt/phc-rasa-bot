# Dockerfile
FROM rasa/rasa:3.6.2-full

WORKDIR /app
COPY . /app

USER root
RUN pip install -r requirements.txt

CMD ["run", "--enable-api", "--cors", "*", "--debug"]
