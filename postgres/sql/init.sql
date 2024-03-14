-- Database
CREATE DATABASE myimdb;
\c myimdb;

-- Directors
CREATE TABLE directors (
  id serial NOT NULL,
  PRIMARY KEY (id),
  name character varying NOT NULL,
  last_name character varying NOT NULL
);

INSERT INTO directors (name, last_name) VALUES ('Quentin', 'Tarantino');
INSERT INTO directors (name, last_name) VALUES ('Christopher', 'Nolan');

-- Movies
CREATE TABLE movies (
  id uuid NOT NULL,
  title character varying NOT NULL,
  year_of_production smallint NOT NULL,
  director_id integer NOT NULL
);

ALTER TABLE movies
ADD CONSTRAINT movies_id PRIMARY KEY (id);
ALTER TABLE movies
ADD FOREIGN KEY (director_id) REFERENCES directors (id);

INSERT INTO movies (id, title, year_of_production, director_id) 
VALUES ('f5b3b3d3-3c3e-4e6f-8e1f-3f3f3f3f3f3f', 'Pulp Fiction', 1994, 1);
INSERT INTO movies (id, title, year_of_production, director_id)
VALUES ('f5b3b3d3-3c3e-4e6f-8e1f-3f3f3f3f3f3e', 'Inception', 2010, 2);

-- Actors
CREATE TABLE actors (
  id serial NOT NULL,
  PRIMARY KEY (id),
  name character varying NOT NULL
);


-- Link between movies and actors
CREATE TABLE movies_actors (
  movie_id uuid NOT NULL,
  actor_id integer NOT NULL
);

ALTER TABLE movies_actors
ADD CONSTRAINT movies_actors_id_movies_id_actors PRIMARY KEY (movie_id, actor_id);
ALTER TABLE movies_actors
ADD FOREIGN KEY (movie_id) REFERENCES movies (id);
ALTER TABLE movies_actors
ADD FOREIGN KEY (actor_id) REFERENCES actors (id);
