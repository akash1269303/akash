FROM python:3.8.13-slim-buster
WORKDIR /app
COPY ./project1 ./

RUN pip install --upgrade pip --no-cache-dir

RUN pip install -r /app/requirements.txt --no-cache-dir

CMD ['python',"manage.py","runserver","0.0.0.0:8000"]