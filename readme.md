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

- `cassandra` folder contains a compose file for a cassandra database.
- `kafka` folder contains a compose file kafka development environment.
- `ms-sql` folder contains a compose file for a microsoft sql server database.
- `postgres` folder contains a compose file for a postgres database.
- `redis` folder contains a compose file for a redis database.
- `own` folder contains custom docker images.

Other files in the root are unsorted and may be moved in the future.

### Cassandra

Cassandra has only one variation [`cassandra-mini.yml`](cassandra/cassandra-mini.yml) -
a minimalistic cassandra setup with a single node.

### Kafka

Kafka has following variations:

- [`kafka-confluent-ui.yml`](kafka/kafka-confluent-ui.yml) - a kafka setup with a single broker and a single zookeeper instance and [kafka-ui]. It also includes a health check for
each service.
- [`kafka-mini.yml`](kafka/kafka-mini.yml) - a minimalistic kafka setup with a single broker and a single zookeeper instance.
- [`kakfa-ui.yml`](kafka/kafka-ui.yml) - the same as `kafka-mini` and a connected [kafka-ui] instance.

### Postgres

Postgres has following variations:

- [`postgres-mini.yml`](postgres/postgres-mini.yml) - a minimalistic postgres setup with a single database. Loads the [`init.sql`](postgres/sql/init.sql) file on startup.
- [`postgres-adminer.yml`](postgres/postgres-adminer.yml) - the same as `postgres-mini` and a connected [adminer] instance.
- [`postgres-dbgate.yml`](postgres/postgres-dbgate.yml) - the same as `postgres-mini` and a connected [dbgate] instance.
- [`postgres-pgadmin.yml`](postgres/postgres-pgadmin.yml) - the same as `postgres-mini` and a connected [pgadmin] instance.

### Redis

Redis has following variations:

- [`redis-commander.yml`](redis/redis-mini.yml) - a minimalistic redis setup with a single database and a connected [redis-commander] instance.
- [`redis-stack.yml`](redis/redis-stack.yml) - uses [redis-stack] to combine redis and [redis-insight] into a single stack.

### Own

This folder contains custom docker images that I use for development:

- [`sbt-docker-temurin.dockerfile`](own/sbt-docker-temurin.dockerfile) - a slightly modified version of the official `sbt` image [`sbtscala/scala-sbt`](https://hub.docker.com/r/sbtscala/scala-sbt) with [Temurin JDK]. Modified to
enable docker builds inside the container.

[kafka-ui]: https://docs.kafka-ui.provectus.io/overview/getting-started
[adminer]: https://www.adminer.org/
[redis-commander]: https://github.com/joeferner/redis-commander
[redis-stack]: https://redis.io/docs/about/about-stack/
[redis-insight]: https://redislabs.com/redis-enterprise/redis-insight/
[dbgate]: https://dbgate.org/
[pgadmin]: https://www.pgadmin.org/
[Temurin JDK]: https://adoptium.net/
