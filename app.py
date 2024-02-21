from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    print("Handling request for /")
    return 'Hello, Rana Rehan yuy test yes itt!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
