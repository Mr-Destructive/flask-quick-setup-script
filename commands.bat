mkdir %1
cd %1
pip install virtualenv
virtualenv venv
call venv\Scripts\activate

pip install flask
(
echo click~=8.0.3
echo colorama~=0.4.4
echo Flask~=2.0.2
echo importlib-metadata~=4.8.1
echo itsdangerous~=2.0.1
echo Jinja2~=3.0.2
echo MarkupSafe~=2.0.1
echo typing-extensions~=3.10.0.2
echo Werkzeug~=2.0.2
echo zipp~=3.6.0
)>"requirements.txt"


(
echo from flask import Flask, render_template, request
echo app = Flask(__name__^)
echo if __name__ == "__main__":
echo.   app.run(^)
)>"app.py"

set FLASK_APP=app

mkdir template static
