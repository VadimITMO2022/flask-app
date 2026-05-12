FROM python:3.9-slim
WORKDIR /app

# Сначала копируем только файл зависимостей
COPY requirements.txt .
# Этот слой закэшируется и не будет пересобираться, если список библиотек не менялся
RUN pip install --no-cache-dir -r requirements.txt

# Затем копируем весь остальной код
COPY . .

EXPOSE 5000
CMD ["python", "app.py"]