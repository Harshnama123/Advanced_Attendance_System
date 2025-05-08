# Flask Attendance Application

This project is a Flask-based web application designed for managing attendance using face recognition technology. It allows teachers to register students, mark attendance manually or via images, and view attendance records.

## Project Structure

```
flask-attendance
├── app
│   ├── __init__.py
│   ├── config.py
│   ├── models
│   │   └── __init__.py
│   ├── routes
│   │   └── __init__.py
│   ├── static
│   │   ├── css
│   │   └── js
│   ├── templates
│   │   ├── base.html
│   │   └── index.html 
│   └── utils
│       └── __init__.py
├── tests
│   └── __init__.py
├── requirements.txt
└── README.md
```

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd flask-attendance
   ```

2. Create a virtual environment:
   ```bash
   python -m venv venv
   ```

3. Activate the virtual environment:
   - On Windows:
     ```bash
     venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```

4. Install the required packages:
   ```bash
   pip install -r requirements.txt
   ```

## Usage

1. Set up the database and any necessary configurations in `app/config.py`.
2. Run the application:
   ```bash
   python -m app
   ```
3. Access the application in your web browser at `http://127.0.0.1:5000`.

## Features

- User authentication using Flask-Login.
- Student registration with photo uploads.
- Manual and image-based attendance marking.
- View attendance records by date and time.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.