SNAME=redis

# -- creating folder for Redis service
DIR=services/$SNAME
if [ ! -d "$DIR" ]; then
  mkdir $DIR
fi

# -- creating folder for storing data
DIR_DATA=$DIR/data
if [ ! -d "$DIR_DATA" ]; then
  mkdir $DIR_DATA
fi

# -- bitnami image needs permissions
sudo chown -R 1001:1001 $DIR_DATA