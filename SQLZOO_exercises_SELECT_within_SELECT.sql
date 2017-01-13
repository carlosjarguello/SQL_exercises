/* Solution to SQLZOO exercises */
/* MySQL engine */

/* To query columns: select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'world' */

/*SELECT within a SELECT - Nested SELECT */

1. SELECT name FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Russia')

2. SELECT name FROM world
WHERE gdp/population > (SELECT gdp/population FROM world WHERE
name = 'United Kingdom') AND continent = 'Europe'

3. SELECT name, continent
FROM world
WHERE continent IN
(SELECT continent FROM world where name IN ('Argentina', 'Australia')) ORDER BY name

4. SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND
population < (SELECT population FROM world WHERE name = 'Poland')

5. SELECT name, CONCAT(ROUND(100*population/(SELECT population FROM world
  WHERE name = 'Germany'), 0), '%') AS 'per_germany'
FROM world
WHERE continent = 'Europe'

/* Aggregate functions */

6. SELECT name FROM world WHERE gdp >
ALL(SELECT gdp FROM world WHERE gdp > 0 and continent = 'Europe')

7. SELECT continent, name, area FROM world AS x
WHERE area >= ALL
    (SELECT area FROM world AS y
        WHERE y.continent=x.continent
          AND area>0)

8. SELECT continent, name FROM world as x
WHERE name =  (SELECT name FROM world as y
WHERE x.continent = y.continent
ORDER BY name LIMIT 1)

9. SELECT name, continent, population FROM world x
  WHERE 25000000>=ALL (SELECT population FROM world y
                         WHERE x.continent=y.continent
                         AND population>0)

SELECT name, continent, population
FROM world AS x
WHERE NOT EXISTS (SELECT *
   FROM world AS y
   WHERE x.continent = y.continent
   AND y.population > 25000000
   )

10. SELECT name, continent FROM world AS x
WHERE population/3 > ALL (
  SELECT y.population
  FROM world AS y
  WHERE x.continent = y.continent
  AND x.name != y.name)
