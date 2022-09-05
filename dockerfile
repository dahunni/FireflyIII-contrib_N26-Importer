FROM python:latest

COPY start.sh .

COPY main.py .

COPY requirements.txt .

COPY categories /categories

COPY store /store

RUN pip install -r requirements.txt

CMD ["./start.sh", "loop"]