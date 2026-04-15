-- Schema: CREATE TABLE "darts" ("x" REAL, "y" REAL, score INTEGER);
-- Task: update the darts table and set the score based on the x and y values.
-- use the equation of a circle to write the query
-- so if x*x + y*y = r*r
-- then possibly just select x*x and y*y
WITH scores as (
    select x, y, x*x as xx, y*y as yy, sqrt((x*x)+(y*y)) as dart_score from darts

)
UPDATE darts
SET score = (
    SELECT CASE WHEN abs(dart_score) between 0 AND 1 then 10
        WHEN abs(dart_score) between 1 and 5 then 5
        WHEN abs(dart_score) between 5 and 10 then 1
        ELSE 0
    END FROM scores WHERE x = darts.x AND darts.y = y );



-- SELECT CASE WHEN dart_score between 0 and 1 then 10
-- WHEN dart_score between 1 and 5 then 5
-- WHEN dart_score between 5 and 10 then 1
-- ELSE 0
-- END from scores;

-- UPDATE darts
-- SET score =
-- CASE
-- WHEN darts.x > 10 or darts.x < 10 THEN 10000
-- ELSE 100
-- END;


