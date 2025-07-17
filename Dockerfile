FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV DEEPSEEK_API_KEY=${DEEPSEEK_API_KEY}
ENV PORT=8000

EXPOSE $PORT

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "${PORT}"]