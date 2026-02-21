FROM python:3.11-slim

WORKDIR /app

# Upgrade pip FIRST and add verbose output
RUN pip install --no-cache-dir --upgrade pip setuptools wheel

COPY requirements.txt .
RUN pip install --no-cache-dir -v -r requirements.txt

COPY . .

CMD ["python", "your_app.py"]
