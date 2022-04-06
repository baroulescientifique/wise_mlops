FROM python:3.8-alpine

# keep python from generating .pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# This keeps Python from buffering stdin/stdout
ENV PYTHONUNBUFFERED 1

WORKDIR /tensorflow/models/research

COPY . .

CMD [ "python", "./test.py" ]