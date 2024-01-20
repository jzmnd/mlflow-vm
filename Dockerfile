FROM ghcr.io/mlflow/mlflow:latest

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
        python3-dev \
        build-essential \
        pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
        psycopg2-binary==2.9.3 \
        boto3==1.28.56

CMD ["bash"]
