DROP DATABASE IF EXISTS about_this_item;

CREATE DATABASE about_this_item;

CREATE TABLE categories (
  id INT PRIMARY KEY NOT NULL,
  category_name VARCHAR(20) NOT NULL
);

CREATE TABLE items (
  id INT PRIMARY KEY NOT NULL,
  category_id INT NOT NULL,
  item_name VARCHAR(100) NOT NULL,
  item_description VARCHAR(4000) NOT NULL,
);

CREATE TABLE item_specs (
  id INT AUTO_INCREMENT INT NOT NULL,
  item_id INT NOT NULL, --Foreign key to items.id
  specs VARCHAR(100) NOT NULL
);

CREATE TABLE item_highlights (
  id INT AUTO_INCREMENT INT NOT NULL,
  item_id INT NOT NULL, --Foreign key to items.id
  highlights VARCHAR(400) NOT NULL
);