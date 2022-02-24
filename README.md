# https-backend

This repository is a minimal setup for running your services with Docker (Compose) behind Traefik proxy and with autogenerated HTTPS certificates. That means if you have the `API` service (e.g. NodeJS app) and would like to make it available through `https://api.your-domain.com`, then you are at the right place.

## Quickstart

1. Connect to the remote server

```bash
> ssh root@IP_ADDRESS
```

2. Clone this repo

```bash
> git clone https://github.com/starters-dev/https-backend backend
> cd backend
```

3. Fill in `.env` file with your information

```bash
> mv .env.example .env
> nano .env
```

4. Get the service repo (e.g. `nextjs-tailwind-starter`)

```bash
> bash run/get-repo.sh nextjs-tailwind-starter
```

It will fetch the following repo `https://github.com/starters-dev/nextjs-tailwind-starter`

5. Build and run

```bash
> bash run/build.sh
```

It will setup everything, including ACME (https certificates), and will run docker.

## Tips

---

If you'd like to add your service or from [starters-dev](https://github.com/starters-dev), create a dedicated `docker-compose.your-service.yml` file and add it to `run/build.sh` and then run:

```bash
> bash run/get-repo.sh <service-repo>
```

---

---

You can find example `env` file in the root folder.

`DO_AUTH_TOKEN` is used to generate https certificates against [DigitalOcean](https://digitalocean.com) challenge. You can generate one in the DO Networking dashboard or choose one of the [available providers](https://doc.traefik.io/traefik/https/acme/#providers).

---
