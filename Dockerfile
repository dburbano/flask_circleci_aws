FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
ENTRYPOINT [ "gunicorn","--bind","0.0.0.0:5000","wsgi:app" ]
# CMD [ "python", "./app.py" ]