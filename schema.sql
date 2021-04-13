DROP TABLE IF EXISTS review_id_table;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS vine_table;

CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id TEXT,
  product_id TEXT,
  product_parent TEXT,
  review_date DATE,
  batch_id INTEGER
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT NOT NULL,
  product_title TEXT,
  product_category TEXT,
  batch_id INTEGER,
  PRIMARY KEY(product_id, batch_id)
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id TEXT,
  customer_count INT,
  batch_id INTEGER,
  PRIMARY KEY(customer_id, batch_id)
);

-- reviews table
CREATE TABLE reviews (
  review_id TEXT PRIMARY KEY,
  verified_purchase TEXT,
  review_headline TEXT,
  review_body TEXT,
  batch_id INTEGER
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  batch_id INTEGER
);
