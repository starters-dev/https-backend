# -- running system bash files
bash run/acme.sh
bash run/data.sh

# -- running services' bash files
BASH_FILES=""
for F in `find ./run/services -type f -maxdepth 1 -name "*.sh"`
do
  BASH_FILES="$BASH_FILES bash $F;"
done
eval $BASH_FILES