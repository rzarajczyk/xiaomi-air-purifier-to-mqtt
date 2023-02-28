FROM python:3.10-slim-bullseye

RUN apt update
RUN apt install -y gcc

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "./src/main.py"]
