FROM python:3.10.9-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "flask", "--app=app", "run", "--host=0.0.0.0" ]