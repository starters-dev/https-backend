# -- creating folder for PostgreSQL
DIR=data/postgresql

if [ ! -d "$DIR" ]; then
  mkdir data/postgresql
fi

# -- bitnami image needs permissions
sudo chown -R 1001:1001 data/postgresql