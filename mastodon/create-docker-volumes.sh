#https://github.com/raeffs/mastodon-docker-compose/blob/main/part-3/create-docker-volumes.sh

docker volume create mastodon-db-volume
docker volume create mastodon-es-volume
docker volume create mastodon-redis-volume

docker volume create caddy-data-volume
docker volume create caddy-config-volume
