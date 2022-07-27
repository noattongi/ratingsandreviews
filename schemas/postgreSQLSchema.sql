CREATE SCHEMA sdc;

CREATE TABLE sdc.reviews(
  id SERIAL PRIMARY KEY,
  product_id INTEGER NOT NULL,
  rating INTEGER NOT NULL,
  summary VARCHAR(60) NOT NULL,
  body VARCHAR(1000) NOT NULL,
  recommend BOOLEAN NOT NULL,
  name VARCHAR(60) NOT NULL,
  email VARCHAR(60) NOT NULL,
  helpful INTEGER DEFAULT 0
)

CREATE TABLE sdc.characteristics(
  id SERIAL PRIMARY KEY,
  characteristic VARCHAR(30) NOT NULL,
  value NUMERIC NOT NULL,
  review_id: SERIAL REFERENCES sdc.reviews(id)
)

CREATE TABLE sdc.photos(
  id SERIAL PRIMARY KEY,
  url: VARCHAR(100),
  review_id: INTEGER REFERENCES sdc.reviews(id)
)