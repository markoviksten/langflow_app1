FROM python:3.10-slim

WORKDIR /app

RUN pip install langflow

COPY . .

ENV PORT=7860
EXPOSE $PORT

CMD ["sh", "-c", "langflow run --host 0.0.0.0 --port $PORT"]
