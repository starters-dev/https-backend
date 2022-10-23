# -- running services' bash files
BASH_GENERAL_FILES="bash run/acme.sh; bash run/data.sh;"
BASH_FILES=""
for F in `find ./services -maxdepth 2 -type f -name "index.sh"`
do
  BASH_FILES="$BASH_FILES bash $F;"
done
eval "$BASH_GENERAL_FILES $BASH_FILES"

# -- .env.example -> .env
ENVEXF=.env.example
if [ -f "$ENVEXF" ]; then
  mv .env.example .env
fi