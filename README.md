# [starters.dev](https://starters.dev) backend

This repo is used to configure a backend for https://starters.dev in the Cloud (DigitalOcean.com)

## Quickstart

1. Connect to the remote server

```bash
> ssh root@IP_ADDRESS
```

2. Clone this repo

```bash
> git clone https://github.com/starters-dev/starters.dev-backend.git backend
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

If you'd like to add another service from [starters-dev](https://github.com/starters-dev), create a dedicated `docker-compose.your-service.yml` file and add it to `run/build.sh` and run:

```bash
> bash run/get-repo.sh <service-repo>
```

---

---

You can find example `env` file in the root folder.

`DO_AUTH_TOKEN` is used to generate https certificates against [DigitalOcean](https://digitalocean.com) challenge. You can generate one in the DO Networking dashboard or choose one of the [available providers](https://doc.traefik.io/traefik/https/acme/#providers).

---
