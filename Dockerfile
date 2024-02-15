FROM python:alpine

COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# COPY ./app /app
WORKDIR /app

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]