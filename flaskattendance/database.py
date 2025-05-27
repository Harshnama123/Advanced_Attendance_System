import os
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv()

# Get MongoDB URI from environment variable
MONGO_URI = os.getenv("MONGO_URI")
if not MONGO_URI:
    raise ValueError("No MONGO_URI environment variable set!")

try:
    # Connect with a timeout
    client = MongoClient(MONGO_URI, serverSelectionTimeoutMS=5000)
    # Verify connection
    client.server_info()
    print("Successfully connected to MongoDB Atlas!")
except Exception as e:
    print(f"Error connecting to MongoDB Atlas: {str(e)}")
    raise

db = client["attendance_system"]
teachers_collection = db["teachers"]
students_collection = db["students"]
classes_collection = db["classes"]
attendance_collection = db["attendance"]

