import sys
from flask import Flask
app = Flask(__name__)

#print(sys.argv[1])

@app.route('/')
def hello():
    return "Hello World! my favorite fruit is: " + (sys.argv[1])

if __name__ == '__main__':
    app.run()
