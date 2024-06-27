from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Rolex Bot Started!"})

def run_server():
    app.run(host='0.0.0.0', port=80)

if __name__ == '__main__':
    run_server()
