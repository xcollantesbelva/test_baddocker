FROM --platform=linux/amd64 python:3.9-slim

WORKDIR /app

THIS IS SOME TEXT TO TRIGGER ERROR

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5002

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5002"]
