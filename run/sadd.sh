SNAME=$1

# -- adding docker compose file
SDC=services/docker-compose.$SNAME.yml
if [ ! -f "$SDC" ]; then
  touch $SDC
fi

# -- adding service folder
SDIR=services/$SNAME
if [ ! -d "$SDIR" ]; then
  mkdir $SDIR
fi

# -- adding script
SSH=services/$SNAME/index.sh
if [ ! -f "$SSH" ]; then
  touch $SSH > SNAME=$SNAME
fi 