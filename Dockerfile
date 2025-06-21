# Use official Python slim image
FROM python:3.10-slim

# Install system dependencies for dlib, face-recognition, and OpenCV
RUN apt-get update && \
    apt-get install -y build-essential cmake libopenblas-dev liblapack-dev libx11-dev libgtk-3-dev libboost-python-dev libboost-thread-dev libsm6 libxext6 libxrender-dev python3-dev && \
    pip install --upgrade pip

# Set work directory
WORKDIR /app

# Copy requirements
COPY requirements.txt ./

# Install Python dependencies
RUN pip install -r requirements.txt

# Copy project files
COPY . .

# Expose port (Gunicorn default)
EXPOSE 8000

# Set environment variables for Flask
ENV FLASK_ENV=production

# Run Gunicorn
CMD ["gunicorn", "flaskattendance.app:app", "--workers=2", "--threads=4", "--worker-class=gthread", "--timeout=120", "--bind=0.0.0.0:8000"]
