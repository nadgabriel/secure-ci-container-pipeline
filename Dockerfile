FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/

ENV APP_VERSION=1.0.0

EXPOSE 8080

CMD ["python", "app/app.py"]
