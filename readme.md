# Docker Compose collection

## Description

This repository contains a collection of docker-compose files and images for various applications
that I use on a regular basis.

## Usage

Clone the repository and run the following command:

```zsh
docker-compose -f <compose-file> up -d
```

Where `<compose-file>` is the name of the compose file you want to use.

## Structure

The collection is structured as follows:

- `cassandra` folder contains a compose file for a Cassandra database.
- `code` folder contains code management tools.
- `kafka` folder contains compose files for Kafka development environment.
- `mail` folder contains email testing tools.
- `monitoring` folder contains monitoring tools.
- `ms-sql` folder contains a compose file for a Microsoft SQL Server database.
- `postgres` folder contains compose files for a Postgres database.
- `proxy` folder contains a compose file for a proxy server.
- `redis` folder contains compose files for a Redis database.
- `tools` folder contains various tools for day-to-day life.
- `own` folder contains custom docker images.

### Cassandra

Cassandra has only one variation [`cassandra.yml`](cassandra/cassandra.yml) -
a minimalistic cassandra setup with a single node.

### Code

For code management:

- [`forgejo.yml`](code/forgejo.yml) - a setup with [forgejo], a [gitea] fork.
- [`gitness.yml`](code/gitness.yml) - a setup with [gitness], a very new project.

### Kafka

Kafka has following variations:

- [`kafka-confluent-ui.yml`](kafka/kafka-confluent-ui.yml) - a kafka setup with a single broker and a single zookeeper instance and [kafka-ui]. It also includes a health check for each service.
- [`kafka-confluent-rd.yml`](kafka/kafka-confluent-rd.yml) - the same as `kafka-confluent-ui` but with [redpanda] UI  instead of [kafka-ui].
- [`kafka-mini.yml`](kafka/kafka-mini.yml) - a minimalistic kafka setup with a single broker and a single zookeeper instance.
- [`kafka-ui.yml`](kafka/kafka-ui.yml) - the same as `kafka-mini` and a connected [kafka-ui] instance.

### Mail

This package contains only [`mailpit.yml`](mail/mailpit.yml) which deploys lightweight
SMTP testing tool [mailpit].

### Monitoring

Monitoring tools:

- [`kuma.yml`](monitoring/kuma.yml) - a setup with [kuma] uptime monitor. (Not confuse with `kuma` service mesh)
- [`raspbery-grafana`](monitoring/raspberry-grafana/) - subproject with a setup for a [Raspberry Pi] with [Grafana] and [Prometheus]

### Microsoft SQL

Microsoft SQL Server has only one variation [`ms-sql.yml`](ms-sql/ms-sql.yml) - a minimalistic MS SQL Server setup with a single database.
This will load and insert the [CSV data](ms-sql/data/data.csv) using [`load-data.sql`](ms-sql/load-data.sql) file on startup.

### Postgres

Postgres has following variations:

- [`postgres-mini.yml`](postgres/postgres-mini.yml) - a minimalistic postgres setup with a single database. Loads the [`init.sql`](postgres/sql/init.sql) file on startup.
- [`postgres-adminer.yml`](postgres/postgres-adminer.yml) - the same as `postgres-mini` and a connected [adminer] instance.
- [`postgres-dbgate.yml`](postgres/postgres-dbgate.yml) - the same as `postgres-mini` and a connected [dbgate] instance.
- [`postgres-pgadmin.yml`](postgres/postgres-pgadmin.yml) - the same as `postgres-mini` and a connected [pgadmin] instance.

### Proxy

Currently, there is only one variation [`nginx-proxy.yml`](proxy/nginx-proxy.yml) - a setup with a [Nginx Proxy Manager] instance.

### Redis

Redis has following variations:

- [`redis-commander.yml`](redis/redis-commander.yml) - a minimalistic redis setup with a single database and a connected [redis-commander] instance.
- [`redis-stack.yml`](redis/redis-stack.yml) - uses [redis-stack] to combine redis and [redis-insight] into a single stack.

### Tools

Contains various tools for day-to-day life:

- Automation:
  - [`semaphore.yml`](tools/auto/semaphore.yml) - a setup with [Ansible Semaphore] automation platform.
- Books:
  - [`calibre.yml`](tools/books/calibre.yml) - a setup with web version [calibre] ebook manager.
  - [`komga.yml`](tools/books/komga.yml) - a setup with [komga] comics manager.
- Document management:
  - [`paperless.yml`](tools/documents/paperless.yml) - a setup with [paperless-ngx] document manager.
  - [`hat.yml`](tools/documents/hat.yml) - a setup with [hat] encryption tool.
- Photos:
  - [`immich.yml`](tools/photos/immich.yml) - a setup with [immich] photo manager.
- [`actual.yml`](tools/actual.yml) - a setup with [actual] finance management system.
- [`home-assistant.yml`](tools/home-assistant.yml) - a setup with [Home Assistant] home automation platform.
- [`homebox.yml`](tools/homebox.yml) - inventory management system for home, a bit unpolished, but works.
- [`karakeep.yml`](tools/karakeep/karakeep.yml) - a setup with [Karakeep] bookmarking and archiving tool.
- [`metube.yml`](tools/metube.yml) - a setup with [metube] video downloader, based on [yt-dlp] and `ffmpeg`.
- [`news.yml`](tools/news.yml) - a setup with [Fusion] RSS reader and news aggregator.
- [`pairdrop.yml`](tools/pairdrop.yml) - file transfer in local network with [pairdrop] file sharing service.

### Own

This folder contains custom docker images that I use for development:

- [`sbt-docker-temurin.dockerfile`](own/sbt-docker-temurin.dockerfile) - a slightly modified version of the official `sbt` image [`sbtscala/scala-sbt`](https://hub.docker.com/r/sbtscala/scala-sbt) with [Temurin JDK]. Modified to
enable docker builds inside the container.


## Versions

This repository prefers the working state of the applications. So all versions are explicitly set in the compose files, to know on which version the setup was tested and works.

[kafka-ui]: https://docs.kafka-ui.provectus.io/overview/getting-started
[redpanda]: https://vectorized.io/
[adminer]: https://www.adminer.org/
[redis-commander]: https://github.com/joeferner/redis-commander
[redis-stack]: https://redis.io/docs/about/about-stack/
[redis-insight]: https://redislabs.com/redis-enterprise/redis-insight/
[dbgate]: https://dbgate.org/
[pgadmin]: https://www.pgadmin.org/
[Temurin JDK]: https://adoptium.net/
[gitea]: https://about.gitea.com/
[forgejo]: https://forgejo.org/
[gitness]: https://docs.gitness.com/
[kuma]: https://uptime.kuma.pet/
[Raspberry Pi]: https://www.raspberrypi.org/
[Grafana]: https://grafana.com/
[Prometheus]: https://prometheus.io/
[Nginx Proxy Manager]: https://nginxproxymanager.com/
[calibre]: https://github.com/janeczku/calibre-web
[komga]: https://komga.org/
[paperless-ngx]: https://docs.paperless-ngx.com/
[hat]: https://hat.sh/about/
[immich]: https://immich.app/
[actual]: https://actualbudget.com/
[yt-dlp]: https://github.com/yt-dlp/yt-dlp
[metube]: https://github.com/alexta69/metube
[pairdrop]: https://pairdrop.net/
[mailpit]: https://mailpit.axllent.org/
[Ansible Semaphore]: https://ansible-semaphore.com/
[Home Assistant]: https://www.home-assistant.io/
[Karakeep]: https://github.com/karakeep-app/karakeep
[Fusion]: https://github.com/0x2E/fusion
