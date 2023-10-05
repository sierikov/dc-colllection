# Docker Compose collection

## Description

This repository contains a collection of docker-compose files for various applications
that I use on a regular basis.

## Usage

Clone the repository and run the following command:

```zsh
docker-compose -f <compose-file> up -d
```

Where `<compose-file>` is the name of the compose file you want to use.

## Structure

The collection is structured as follows:

- `kafka` folder contains a compose file kafka development environment.
- `postgres` folder contains a compose file for a postgres database.
- `redis` folder contains a compose file for a redis database.

Other files in the root are unsorted and may be moved in the future.

### Kafka

Kafka has following variations:

- [`kafka-mini.yml`](kafka/kafka-mini.yml) - a minimalistic kafka setup with a single broker and a single zookeeper instance.
- [`kakfa-ui.yml`](kafka/kafka-ui.yml) - the same as `kafka-mini` and a connected [kafka-ui] instance.

### Postgres

Postgres has following variations:

- [`postgres-mini.yml`](postgres/postgres-mini.yml) - a minimalistic postgres setup with a single database. Loads the [`init.sql`](postgres/sql/init.sql) file on startup.
- [`postgres-adminer.yml`](postgres/postgres-adminer.yml) - the same as `postgres-mini` and a connected [adminer] instance.

### Redis

Redis has following variations:

- [`redis-commander.yml`](redis/redis-mini.yml) - a minimalistic redis setup with a single database and a connected [redis-commander] instance.
- [`redis-stack.yml`](redis/redis-stack.yml) - uses [redis-stack] to combine redis and [redis-insight] into a single stack.

[kafka-ui]: https://docs.kafka-ui.provectus.io/overview/getting-started
[adminer]: https://www.adminer.org/
[redis-commander]: https://github.com/joeferner/redis-commander
[redis-stack]: https://redis.io/docs/about/about-stack/
[redis-insight]: https://redislabs.com/redis-enterprise/redis-insight/
