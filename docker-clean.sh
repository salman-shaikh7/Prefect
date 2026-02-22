#!/bin/bash

# -------------------------------------------------------
# Docker Full Cleanup Script
# Stops everything and removes all containers, images,
# volumes, and networks (except default networks)
# -------------------------------------------------------

echo "🛑 Stopping all running containers..."
docker stop $(docker ps -aq) 2>/dev/null

echo "🗑️ Removing all containers..."
docker rm $(docker ps -aq) 2>/dev/null

echo "🖼️ Removing all images..."
docker rmi -f $(docker images -q) 2>/dev/null

echo "📦 Removing all volumes..."
docker volume rm $(docker volume ls -q) 2>/dev/null

echo "🌐 Removing all networks except default..."
docker network rm $(docker network ls -q | grep -v "bridge\|host\|none") 2>/dev/null

echo "⚡ Running system prune to clean up leftover resources..."
docker system prune -a --volumes -f

echo "✅ Docker cleanup complete!"