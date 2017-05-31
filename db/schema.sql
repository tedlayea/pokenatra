DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  poke_type VARCHAR,
  cp VARCHAR,
  img_url VARCHAR
);

-- CREATE TABLE trainer (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR,
--   level VARCHAR,
--   img_url VARCHAR
-- );

-- CREATE TABLE team (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR,
-- );

-- CREATE TABLE OwnedPokemon (
--   pokemon_id SERIAL PRIMARY KEY,
--   trainer_id VARCHAR,
--   cp VARCHAR,
-- );
