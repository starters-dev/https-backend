SNAME=plausible

# -- creating folder for Plausible service
DIR=services/$SNAME
if [ ! -d "$DIR" ]; then
  mkdir $DIR
fi

# -- creating folder for storing data
DIR_DATA=$DIR/data
if [ ! -d "$DIR_DATA" ]; then
  mkdir $DIR_DATA
fi