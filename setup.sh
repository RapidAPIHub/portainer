#!/bin/bash

CONTAINER_NAME="portainer"
IMAGE_NAME="portainer/portainer-ce:lts"
VOLUME_NAME="portainer_data"

case "$1" in
  start)
    echo "🚀 Starting Portainer..."
    docker run -d \
      -p 8000:8000 \
      -p 9443:9443 \
      --name $CONTAINER_NAME \
      --restart=always \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v $VOLUME_NAME:/data \
      $IMAGE_NAME
    ;;
  stop)
    echo "🛑 Stopping Portainer..."
    docker stop $CONTAINER_NAME
    ;;
  restart)
    echo "🔄 Restarting Portainer..."
    docker restart $CONTAINER_NAME
    ;;
  logs)
    echo "📜 Showing logs for Portainer..."
    docker logs -f $CONTAINER_NAME
    ;;
  status)
    echo "📊 Checking Portainer status..."
    docker ps -f name=$CONTAINER_NAME
    ;;
  remove)
    echo "❌ Removing Portainer container..."
    docker rm -f $CONTAINER_NAME
    ;;
  update)
    echo "⬆️  Updating Portainer to latest version..."
    docker pull $IMAGE_NAME
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
    docker run -d \
      -p 8001:8000 \
      -p 9443:9443 \
      --name $CONTAINER_NAME \
      --restart=always \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v $VOLUME_NAME:/data \
      $IMAGE_NAME
    ;;
  *)
    echo "⚙️  Usage: $0 {start|stop|restart|logs|status|remove|update}"
    ;;
esac
