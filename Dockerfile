FROM python:3.14

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir fastapi uvicorn sqlalchemy

EXPOSE 8010

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8010", "--reload"]
