"""Main application file"""
from flask import Flask
from flask_cors import cross_origin, CORS

app = Flask(__name__)
cors = CORS(app)


@app.route('/<random_string>')
@cross_origin()
def returnBackwardsString(random_string):
    """Reverse and return the provided URI"""
    return "".join(reversed(random_string))