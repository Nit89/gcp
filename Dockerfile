# Use the official Python image.
FROM python:3.9-slim

# Set working directory.
WORKDIR /app

# Copy requirements.txt and install dependencies.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code.
COPY . .

# Use Gunicorn as the production server.
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]
