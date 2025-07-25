# Advanced Attendance System

## Overview
The Advanced Attendance System is a modern face recognition-based attendance management system designed to simplify and enhance attendance tracking for educational institutions. It leverages Flask for the backend, MongoDB for data storage, and face recognition technology for identifying students.


## Project Screenshots
Below are screenshots of the main features and pages of the project:

### Landing Page
![{8645BB6B-647D-481A-A776-D40C37F19D4B}](https://github.com/user-attachments/assets/a55681b2-9d7f-46e6-ab7e-d9a33ec7fceb)

The welcoming landing page introduces the system and its features.

### Login Page
![{0A64C946-6187-45C0-8D6E-96C0637FEAE8}](https://github.com/user-attachments/assets/1e7f7d26-06cb-4177-b31f-e196c7629cd1)

Secure login for administrators and lecturers.

### Dashboard Page
![image](https://github.com/user-attachments/assets/e033a187-9031-460a-b1c8-c21a4b8c5048)

Overview of attendance statistics and quick access to management features.

### Profile Page
![{CCDE5E75-4096-4AAC-AFE9-8C7584B182F8}](https://github.com/user-attachments/assets/64f4b717-3f8a-471d-a35a-d75d20fb91da)

User profile management for updating personal details and password.

### Create Class Page
![{761C56F8-5160-4427-8C19-005FCE71974E}](https://github.com/user-attachments/assets/cda34807-3ce0-4400-908d-b37ba6bda337)

Interface for administrators to create and manage classes.

### Register Student Page
![{E5F23482-0FCE-4E0F-97E6-F6CF25DE8A69}](https://github.com/user-attachments/assets/f738c29f-2bf1-4765-b9b5-d75c89f47e8b)

Add new students and capture multiple images for face recognition.

### View Students Page
![{AA3C0CC6-0007-4B9F-BAA0-1EB5F4CA6C91}](https://github.com/user-attachments/assets/ea7610d8-4c11-484d-a82c-b7ec8833f8e6)

List and manage all registered students in the system.

### Manual Attendance Page
![{FD3D633D-CB85-4FE2-9DFF-E5A3982D2F83}](https://github.com/user-attachments/assets/abf3756d-f7e4-4714-856a-fa106b4deadc)

Mark attendance manually for students in a class.

### Image-based Attendance Page
![image](https://github.com/user-attachments/assets/a778edac-dbbf-44d2-986b-fc1ee6d509fb)

Mark attendance by uploading or capturing student images.

### Webcam Attendance Page
![image](https://github.com/user-attachments/assets/911e600f-dcb8-47e4-8c9c-8da6d22cbd20)


Take attendance using live webcam face recognition.

### View Attendance Page
![{BDCF4D00-9EFD-40B5-8BE6-139A0BDE2AA5}](https://github.com/user-attachments/assets/92fc56a9-4f90-4a70-9e19-4124eaad58bd)

View and export attendance records for analysis.

---

## Features
- **Face Recognition Attendance**: Mark attendance using face recognition technology.
- **Manual Attendance**: Option to mark attendance manually.
- **Live Webcam Attendance**: Real-time attendance marking using a webcam.
- **Student Management**: Add, view, and delete students.
- **Class Management**: Manage classes and their associated students.
- **Attendance Reports**: View detailed attendance records and export them to Excel.
- **Dark Mode**: Toggle between light and dark themes.

## Project Structure
```
├── app.py                 # Main Flask application
├── database.py            # MongoDB connection logic
├── encode_faces.py        # Face encoding logic
├── init_db.py             # Database initialization
├── migrate_data.py        # Data migration script
├── test_mongo_connection.py # MongoDB connection testing
├── requirements.txt       # Project dependencies
├── Procfile               # Deployment configuration for Heroku
├── gunicorn.conf.py       # Gunicorn configuration
├── static/                # Static files
│   ├── attendance_sheets/ # Excel attendance sheets
│   ├── class_photos/      # Class photos
│   ├── img/               # Icons and images
│   └── student_photos/    # Student photos
├── templates/             # HTML templates
│   ├── base.html          # Base template
│   ├── landing.html       # Landing page
│   ├── login.html         # Login page
│   ├── register.html      # Registration page
│   ├── dashboard.html     # Dashboard
│   ├── view_students.html # View students
│   ├── view_attendance.html # View attendance
│   ├── mark_attendance_image.html # Mark attendance using images
│   ├── mark_attendance_manual.html # Mark attendance manually
│   ├── live_attendance.html # Live webcam attendance
│   └── manage_classes.html # Manage classes
└── README.md              # Project documentation
```

## Installation

### Prerequisites
- Python 3.8 or higher
- MongoDB (local or Atlas)

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd Advanced-Attendance-System
   ```
2. Create a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Set up environment variables:
   - Create a `.env` file in the root directory.
   - Add the following:
     ```env
     MONGO_URI=<your-mongodb-uri>
     ```
5. Initialize the database:
   ```bash
   python init_db.py
   ```
6. Run the application:
   ```bash
   python app.py
   ```

## Deployment
The project is configured for deployment on Heroku. Use the `Procfile` and `gunicorn.conf.py` for deployment.

## License
This project is licensed under the MIT License.

## Contributors
- Your Name
- Additional Contributors

## Acknowledgments
- Flask
- MongoDB
- Face Recognition Library
- Bootstrap
- Font Awesome

---
