-- Schema: CREATE TABLE "darts" ("x" REAL, "y" REAL, score INTEGER);
-- Task: update the darts table and set the score based on the x and y values.


UPDATE darts
SET score =
SELECT
CASE
WHEN darts.x > 10 or darts.x < 10 THEN 10000
ELSE 100
END
FROM darts;

