# -- getting docker-compose files
DC_FILES="-f docker-compose.yml"
for F in `find ./services -maxdepth 1 -type f -name "docker-compose*.yml"`
do
  DC_FILES="$DC_FILES -f $F "
done

# -- building containers
docker-compose $DC_FILES build && docker-compose $DC_FILES up -d