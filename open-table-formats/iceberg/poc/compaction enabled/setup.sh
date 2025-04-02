#!/bin/bash

set -e  # Exit on error

echo "📁 Creating required directories..."
mkdir -p ./lakehouse
mkdir -p ./notebooks
mkdir -p ./minio/data
mkdir -p ./amoro

echo "🔐 Setting full access permissions..."
sudo chmod -R 777 ./lakehouse
sudo chmod -R 777 ./notebooks
sudo chmod -R 777 ./minio/data
sudo chmod -R 777 ./amoro

echo "🐳 Starting Docker Compose..."
docker-compose up -d
