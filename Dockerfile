# Use official Python image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3-dev cmake libsm6 libxext6 libxrender-dev libglib2.0-0 build-essential && \
    rm -rf /var/lib/apt/lists/*

# Set work directory
WORKDIR /app

# Copy requirements
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port (Gunicorn default)
EXPOSE 8000

# Set environment variables for Flask
ENV FLASK_ENV=production

# Run Gunicorn
CMD ["gunicorn", "flaskattendance.app:app", "--workers=2", "--threads=4", "--worker-class=gthread", "--timeout=120", "--bind=0.0.0.0:8000"]
