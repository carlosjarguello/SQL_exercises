/* Solution to SQLZOO exercises */
/* MySQL engine */

/* To query columns: select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'world' */

/*SELECT from world */

/*Basic SELECT */

1. SELECT population FROM world
WHERE name = 'Germany'

2. SELECT name, population FROM world
WHERE name IN ('Ireland', 'Iceland', 'Denmark')

3. SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

/*SELECT names*/

1. SELECT name FROM world
WHERE name LIKE 'Y%'

2. SELECT name FROM world
WHERE name LIKE '%y'

3. SELECT name FROM world
WHERE name LIKE '%x%'

4. SELECT name FROM world
WHERE name LIKE '%land'

5. SELECT name FROM world
WHERE name LIKE 'C%ia'

6. SELECT name FROM world
WHERE name LIKE '%oo%'

7. SELECT name FROM world
WHERE name LIKE '%a%a%a%'

8. SELECT name FROM world
WHERE name LIKE '_t%'

9. SELECT name FROM world
WHERE name LIKE '%o__o%'

10. SELECT name FROM world
WHERE name LIKE '____'

11. SELECT name FROM world
WHERE name = capital

12. SELECT name FROM world
WHERE capital LIKE concat(name, ' City')

13. SELECT capital, name FROM world
WHERE capital LIKE CONCAT('%',name, '%')

14. SELECT name, capital FROM world
WHERE capital LIKE CONCAT(name, '_%')

15.  SELECT name, REPLACE (capital, name, '') FROM world
WHERE capital LIKE CONCAT(name, '_%')
