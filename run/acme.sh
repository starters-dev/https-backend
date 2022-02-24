DIR=acme
FILE=acme/acme.json

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

if [ ! -f "$FILE" ]; then
  touch "$FILE"
  chmod 600 "$FILE"
fi