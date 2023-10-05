### Install

```bash
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
```

### Run

```bash
make init-db
make start-debug
```

### Deploy

```bash
make build
cd /path/to/deployment/folder
python -m venv .venv
. .venv/bin/activate
pip install flaskr-1.0.0-py3-none-any.whl
flask --app flaskr init-db
pip install waitress
waitress-serve --call 'flaskr:create_app'
```

### Reference

https://flask.palletsprojects.com/en/3.0.x/tutorial/