FROM python:3.12-slim

WORKDIR /app

COPY . /app

RUN apt update -y && apt install -y --no-install-recommends \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "app.py"]
