# `data/` folder for storing DB, Redis, etc. data
DIR=data

if [ ! -d "$DIR" ]; then
  mkdir data
fi