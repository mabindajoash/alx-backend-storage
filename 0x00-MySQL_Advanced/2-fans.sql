-- SQL script that ranks country origins ordered by
-- no of non unique fans

-- statement to select country and number of fans
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
