start-debug:
	flask --app flaskr run --debug

init-db:
	flask --app flaskr init-db

test:
	pytest

build:
	python -m build --wheel

gen-secret:
	python -c 'import secrets; print(secrets.token_hex())'