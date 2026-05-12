from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    a="This is a new new version!"
    return a

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
