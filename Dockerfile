FROM python:3.8

WORKDIR /core

COPY . /core

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 7755

ENV FLASK_APP=core/server.py

RUN flask db upgrade -d core/migrations/

CMD ["gunicorn", "-c", "gunicorn_config.py", "core.server:app"]