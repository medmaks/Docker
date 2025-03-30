# Використовуємо офіційний образ Python
FROM python:3.11

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо всі файли проєкту
COPY . /app

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Вказуємо порт, який буде використовуватися
EXPOSE 5000

# Запускаємо додаток
CMD ["python", "app.py"]
