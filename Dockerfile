FROM python:3.10-alpine AS builder

WORKDIR /app/giropops-senhas
ARG ARGS_REDIS_HOST
ENV REDIS_HOST=${ARGS_REDIS_HOST}
COPY . .
RUN pip install --no-cache-dir -r giropops-senhas/requirements.txt
EXPOSE 5001
# ENTRYPOINT ["flask", "--app", "giropops-senhas", "run", "--host=0.0.0.0", "--debug"]

# Set FLASK_APP to point to your app instance or factory function

ENV FLASK_APP=giropops-senhas.app

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]