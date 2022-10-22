# -- creating folder for Redis
DIR=data/redis

if [ ! -d "$DIR" ]; then
  mkdir data/redis
fi

# -- bitnami image needs permissions
sudo chown -R 1001:1001 data/redis