/* Solution to SQLZOO exercises */
/* MySQL engine */

/* To query columns: select column_name, data_type, character_maximum_length
from INFORMATION_SCHEMA.COLUMNS where table_name = 'world' */

/*SELECT from nobel */

1. SELECT * FROM nobel
WHERE yr = 1950

2. SELECT winner FROM nobel
WHERE yr = 1962 AND subject = 'Literature'

3. SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

4. SELECT winner FROM nobel
WHERE yr >= 2000 AND subject = 'Peace'

5. SELECT yr, subject, winner FROM nobel
WHERE subject = 'Literature' AND yr >= 1980 AND yr <= 1989

6. SELECT yr, subject, winner FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter')

7. SELECT winner FROM nobel
WHERE winner LIKE 'John %'

8. SELECT yr, subject, winner FROM nobel
WHERE (subject = 'Physics' AND yr = 1980) OR (subject = 'Chemistry' AND yr = 1984)

9. SELECT yr, subject, winner FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

10. SELECT * FROM nobel
WHERE (yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature')

11. ---

12. SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL'

13. SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC

14. SELECT winner, subject
FROM nobel WHERE yr=1984 ORDER BY
 CASE
    WHEN subject IN ('Physics','Chemistry') THEN 1
    ELSE 0
 END
 ASC,
 subject,
 winner

/*Alternatively */
SELECT winner, subject
FROM nobel WHERE yr=1984 ORDER BY
subject IN ('Physics','Chemistry')
ASC, subject, winner
