FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Порт по умолчанию
ENV PORT=8000

EXPOSE ${PORT}

# Запуск через shell-форму для подстановки PORT
CMD uvicorn app.main:app --host 0.0.0.0 --port $PORThost", "0.0.0.0", "--port", "${PORT}"]