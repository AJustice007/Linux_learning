import pymysql

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello from Flask with MYSQL!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
