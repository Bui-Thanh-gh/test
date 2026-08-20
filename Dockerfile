# Sử dụng Python làm base image
FROM python:3.11-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy requirements và cài đặt thư viện AI (TensorFlow, Keras...)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy toàn bộ code dự án vào container
COPY . .

# Mặc định khi chạy container sẽ thực thi gì đó (ví dụ chạy file test)
CMD ["python", "app.py"]