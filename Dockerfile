FROM python:3.11

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    libpq-dev \
    gcc \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN useradd -m mlflow-user
USER mlflow-user
WORKDIR /home/mlflow-user

ENV MLFLOW_TRACKING_URI="postgresql://user:pass@db-host/mlflow_db"
ENV MLFLOW_ARTIFACT_ROOT="s3://mlflow-artifacts"
ENV AWS_ACCESS_KEY_ID="minio-access-key"
ENV AWS_SECRET_ACCESS_KEY="minio-secret-key"
ENV MLFLOW_S3_ENDPOINT_URL="http://minio:9000"

EXPOSE 5000

CMD ["mlflow", "server", \
    "--host", "0.0.0.0", \
    "--port", "5000", \
    "--backend-store-uri", "${MLFLOW_TRACKING_URI}", \
    "--default-artifact-root", "${MLFLOW_ARTIFACT_ROOT}"]