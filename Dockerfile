FROM python:3.9.10-slim-bullseye

RUN apt-get update && apt-get install python-tk python3-tk tk-dev -y

WORKDIR /app

COPY ./app/requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["streamlit", "run", "app.py", "--server.port", "80", "--server.enableXsrfProtection", "false"]
