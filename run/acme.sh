# `acme/acme.json` file for storing https certificates
DIR=acme
FILE=acme/acme.json

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

if [ ! -f "$FILE" ]; then
  touch "$FILE"
fi

chmod 600 "$FILE"