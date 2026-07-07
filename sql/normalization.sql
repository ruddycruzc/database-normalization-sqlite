/*
-----------------------------
 SQLite Database Normalization
--------------------------------
 Project: SQLite Database Normalization
 Author : Ruddy P. Cruz Campoverde

 Description:
 This script creates the normalized database structure by
 defining all entities, primary keys and foreign keys.

 Execution order:
 1. Run the provided create table script.
 2. Run the provided insert data script.
 3. Run this normalization script.
 4. Run populate_normalized_tables.sql.

 Notes:
 - Existing normalized tables will be removed automatically.
 - The original table 'sales_not_normalized' is preserved.
==========================================================
*/

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS subcategories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS cities;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS continents;

CREATE TABLE continents (
    continent_id INTEGER PRIMARY KEY AUTOINCREMENT,
    continent_name TEXT NOT NULL UNIQUE
);

CREATE TABLE countries (
    country_id INTEGER PRIMARY KEY AUTOINCREMENT,
    country_name TEXT NOT NULL,
    country_code TEXT NOT NULL UNIQUE,
    continent_id INTEGER NOT NULL,
    FOREIGN KEY (continent_id) REFERENCES continents(continent_id)
);

CREATE TABLE cities (
    city_id INTEGER PRIMARY KEY AUTOINCREMENT,
    city_name TEXT NOT NULL,
    country_id INTEGER NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

CREATE TABLE categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_name TEXT NOT NULL UNIQUE
);

CREATE TABLE subcategories (
    subcategory_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subcategory_name TEXT NOT NULL,
    category_id INTEGER NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subcategory_id INTEGER NOT NULL,
    city_id INTEGER NOT NULL,
    unit_sales BIGINT NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);