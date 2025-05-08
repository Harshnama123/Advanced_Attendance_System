from flask import Blueprint

# Create a blueprint for the routes
main = Blueprint('main', __name__)

from . import views  # Import views to register the routes