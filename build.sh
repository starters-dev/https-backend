# -- getting docker-compose files
DC_FILES="docker-compose.main.yml"
for F in `find ./services -type f -maxdepth 1 -name "docker-compose*.yml"`
do
  DC_FILES="$DC_FILES -f $F "
done

# -- building containers
docker-compose $DC_FILES build && docker-compose $DC_FILES up -d