# -- running services' bash files
BASH_SYSTEM_FILES="bash run/acme.sh; bash run/data.sh;"
BASH_FILES=""
for F in `find ./run/services -maxdepth 1 -type f -name "*.sh"`
do
  BASH_FILES="$BASH_FILES bash $F;"
done
eval "$BASH_SYSTEM_FILES $BASH_FILES"

# -- .env.example -> .env
ENVEXF=.env.example
if [ -f "$ENVEXF" ]; then
  mv .env.example .env
fi