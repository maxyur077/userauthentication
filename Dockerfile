FROM python:3.8.2

RUN apt-get update && apt-get install --yes pipenv
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app

COPY ./ /usr/src/app/
RUN pipenv install --deploy --ignore-pipfile
CMD pipenv run python app.py
