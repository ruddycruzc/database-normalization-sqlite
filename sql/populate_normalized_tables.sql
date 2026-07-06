/*
-------------------------
 Populate Normalized Tables
------------------------
 Project: SQLite Database Normalization
 Author : Ruddy P. Cruz Campoverde

 Description:
 Transfers the information from the original
 'sales_not_normalized' table into the normalized tables.

 Requirements:
 - normalization.sql must have been executed first.
 - sales_not_normalized must already contain data.

 Result:
 All normalized tables will be populated while preserving
 the relationships between entities.
==========================================================
*/

INSERT INTO continents (continent_name)
SELECT DISTINCT continent
FROM sales_not_normalized;

INSERT INTO countries (country_name, country_code, continent_id)
SELECT DISTINCT
    s.country,
    s.country_code,
    c.continent_id
FROM sales_not_normalized s
JOIN continents c
ON s.continent = c.continent_name;

INSERT INTO cities (city_name, country_id)
SELECT DISTINCT
    s.city,
    c.country_id
FROM sales_not_normalized s
JOIN countries c
ON s.country = c.country_name;

INSERT INTO categories (category_name)
SELECT DISTINCT food_category
FROM sales_not_normalized;

INSERT INTO subcategories (subcategory_name, category_id)
SELECT DISTINCT
    s.food_subcategory,
    c.category_id
FROM sales_not_normalized s
JOIN categories c
ON s.food_category = c.category_name;

INSERT INTO sales (subcategory_id, city_id, unit_sales, date)
SELECT
    sub.subcategory_id,
    ci.city_id,
    s.unit_sales,
    s.date
FROM sales_not_normalized s
JOIN subcategories sub
    ON s.food_subcategory = sub.subcategory_name
JOIN cities ci
    ON s.city = ci.city_name;