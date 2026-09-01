FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ /app/src/
COPY pyproject.toml /app/pyproject.toml

RUN pip install --no-cache-dir .

EXPOSE 8080

CMD ["demo-app"]