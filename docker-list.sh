#!/bin/bash
# -------------------------------------------------------
# Docker Resource Listing Script
# Lists all containers, images, volumes, and networks
# -------------------------------------------------------

echo "📋 Listing all Docker containers..."
docker ps -a

echo -e "\n🖼️ Listing all Docker images..."
docker images

echo -e "\n📦 Listing all Docker volumes..."
docker volume ls

echo -e "\n🌐 Listing all Docker networks..."
docker network ls

echo -e "\n✅ Docker resource listing complete!"