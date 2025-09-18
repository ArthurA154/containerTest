# 1. Basis-Image mit Python3
FROM python:3.12-slim

# 2. Arbeitsverzeichnis im Container
WORKDIR /app


# 3. Dependencies kopieren + installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Code ins Image kopieren
COPY . .

# 5. Startbefehl (Uvicorn)
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
