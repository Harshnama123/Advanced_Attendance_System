# Use a prebuilt image with dlib and face-recognition to avoid memory issues
FROM bamos/face-recognition:latest

# Set work directory
WORKDIR /app

# Copy requirements
COPY requirements.txt ./

# Install Python dependencies (dlib and face-recognition are already installed)
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
