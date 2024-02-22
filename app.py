from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    print("Handling request for /")
    additional_lines = """
    Welcome to my Flask application!
    This is a multiline message.
    Here, you can add more information about your application.
    Feel free to customize this message as needed.
    Enjoy exploring!
    """
    return 'Hello, Rana Rehan hi !' + additional_lines

if __name__ == '__main__':
    print("Starting Flask application...")
    app.run(host='0.0.0.0', port=5000)
