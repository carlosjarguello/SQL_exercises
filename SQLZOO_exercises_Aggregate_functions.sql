/*Exercises SQLZOO
/*Aggregate functions: Using SUM, Count, MAX, DISTINCT and ORDER BY. */

1. SELECT SUM(population) FROM world

2. SELECT DISTINCT(continent) FROM world

3. SELECT SUM(gdp) from world WHERE continent='Africa'

4. SELECT COUNT(name) num_countries
FROM world
WHERE area >= 1000000

5. SELECT SUM(population) FROM world WHERE name IN ('France','Germany','Spain')

6. SELECT continent, COUNT(name) FROM world GROUP BY (continent)

7. SELECT continent, COUNT(name) FROM world HAVING population >=10000000
GROUP BY (continent)

8. SELECT continent FROM world GROUP BY (continent)
HAVING SUM(population) > 100000000

Quiz solutions:
c, a, d, e, b, e, d, d
