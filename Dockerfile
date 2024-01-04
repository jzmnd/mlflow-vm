FROM ghcr.io/mlflow/mlflow:latest

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
        python3-dev \
        build-essential \
        pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir psycopg2-binary

CMD ["bash"]
