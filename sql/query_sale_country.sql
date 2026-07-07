/*
==========================================================
 Query Sale Country
----------------------------------------------------------
 Project: SQLite Database Normalization
 Author : Ruddy P. Cruz Campoverde

 Description:
 Returns the country where the sale with ID = 3
 was performed.

 Expected result:
 Canada
==========================================================
*/

SELECT country_name
FROM sales
JOIN cities
    ON sales.city_id = cities.city_id
JOIN countries
    ON cities.country_id = countries.country_id
WHERE sale_id = 3;