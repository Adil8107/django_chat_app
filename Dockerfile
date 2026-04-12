FROM python:3.11

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["daphne", "-b", "0.0.0.0", "-p", "8000", "core.asgi:application"]
