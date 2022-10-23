SNAME=$1

# -- deleting service folder
SDIR=services/$SNAME
if [ -d "$SDIR" ]; then
  rm -rf $SDIR
fi

# -- deleting docker compose file
SDC=services/docker-compose.$SNAME.yml
if [ -f "$SDC" ]; then
  rm -rf $SDC
fi