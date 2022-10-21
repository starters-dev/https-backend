# -- creating folder for Redis
DIR=data/redis

if [ ! -d "$DIR" ]; then
  mkdir data/redis
fi

sudo chown -R 1001:1001 data/redis