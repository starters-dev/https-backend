# as stated here -- https://plausible.io/docs/self-hosting#3-start-the-server
docker-compose exec plausible_db psql -U postgres -d plausible_db -c "UPDATE users SET email_verified = true;"