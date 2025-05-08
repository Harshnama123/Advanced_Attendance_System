import os
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv()

client = MongoClient(os.getenv("MONGO_URI"))
db = client["attendance_system"]
teachers_collection = db["teachers"]
students_collection = db["students"]
classes_collection = db["classes"]
attendance_collection = db.attendance

