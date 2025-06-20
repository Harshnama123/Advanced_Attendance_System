# Advanced Attendance System

A modern facial recognition-based attendance management system built with Flask, MongoDB, and face_recognition library.

## Features

- 👤 Facial Recognition-based Attendance
- 📸 Live Camera Attendance
- 📊 Manual Attendance Option
- 📋 Excel Sheet Export
- 📱 Responsive Design
- 🔒 Secure Authentication
- 📊 Dashboard Analytics
- 👥 Student Management
- 📚 Class Management

## Technology Stack

- **Backend**: Python Flask
- **Database**: MongoDB
- **Face Recognition**: face_recognition library
- **Frontend**: HTML, CSS, JavaScript
- **Authentication**: Flask-Login
- **Export**: OpenPyXL for Excel generation

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/your-username/Advanced_Attendance_System.git
cd Advanced_Attendance_System
```

2. Install system dependencies:
```bash
# For Ubuntu/Debian
sudo apt-get update
sudo apt-get install python3-dev cmake libsm6 libxext6 libxrender-dev libglib2.0-0
```

3. Install Python dependencies:
```bash
pip install -r requirements.txt
```

4. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your MongoDB URI and other configurations
```

5. Initialize the database:
```bash
python init_db.py
```

6. Run the application:
```bash
python app.py
```

## Project Structure

```
flaskattendance/
├── app.py                  # Main application file
├── database.py            # Database configuration
├── encode_faces.py        # Face encoding utilities
├── init_db.py            # Database initialization
├── requirements.txt      # Python dependencies
├── static/              # Static files (CSS, JS, images)
└── templates/          # HTML templates
```

## Environment Variables

Create a `.env` file with the following variables:
```
MONGO_URI=your_mongodb_connection_string
SECRET_KEY=your_secret_key
FLASK_ENV=development/production
```

## Contributing

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License.

## Acknowledgments

- face_recognition library
- Flask framework
- MongoDB
- OpenCV
