DROP SCHEMA IF EXISTS mcve CASCADE;

CREATE SCHEMA mcve;

CREATE TABLE mcve.test (
  id SERIAL PRIMARY KEY,
  value INT,
  column_a text,
  column_b text,
  deleted boolean DEFAULT false NOT NULL
);

CREATE INDEX IF NOT EXISTS test_idx ON mcve.test (column_a, column_b) INCLUDE (deleted);
