from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Ahoj! Toto běží na mém Ubuntu a brzy to bude v Dockeru."

if __name__ == '__main__':
    # host='0.0.0.0' je důležité pro pozdější fungování v Dockeru
    app.run(host='0.0.0.0', port=5000)