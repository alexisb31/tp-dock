
FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app.py /myapp/app.py

RUN addgroup -S mygroup && adduser -S myuser -G mygroup
USER myuser

EXPOSE 5000

CMD ["python", "your-app.py"]