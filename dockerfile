# Python base image
FROM python:3.12-slim

# Container ke andar working directory
WORKDIR /app

# Dependencies copy karo
COPY requirements.txt .

# Python packages install karo
RUN pip install --no-cache-dir -r requirements.txt

# Django project ki files copy karo
COPY . .

# Django port
EXPOSE 8000

# Django server start karo
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]