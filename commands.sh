#!/usr/bin/env bash

mkdir $1
cd $1
pip install virtualenv
virtualenv venv
source venv/bin/activate.sh

pip install flask
cat << EOF >> requirements.txt
click~=8.0.3
colorama~=0.4.4
Flask~=2.0.2
importlib-metadata~=4.8.1
itsdangerous~=2.0.1
Jinja2~=3.0.2
MarkupSafe~=2.0.1
typing-extensions~=3.10.0.2
Werkzeug~=2.0.2
zipp~=3.6.0
EOF

cat << EOF >> app.py
from flask import Flask, render_template, request

app = Flask(__name__)

if __name__ == "__main__":
    app.run()
EOF

export FLASK_APP=app

mkdir templates static

