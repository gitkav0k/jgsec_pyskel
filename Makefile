.PHONY: install format lint test bandit pip-audit codeql clean all

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	ruff format .

lint:
	pylint --disable=R,C .
	ruff check .

test:
	python -m pytest -vv --cov=. tests/

bandit:
	bandit -r .

pip-audit:
	pip-audit

codeql:
	codeql database create codeql-db --language=python --overwrite
	codeql database analyze codeql-db codeql/python-queries --format=csv --output=codeql-results.csv
