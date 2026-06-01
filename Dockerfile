FROM python:3.9 AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /usr/local/lib/python3.9/site-packages \
 /usr/local/lib/python3.9/site-packages
COPY reverse_complement.py .
ENTRYPOINT ["python", "reverse_complement.py"]
CMD ["AACCTTGG"]
