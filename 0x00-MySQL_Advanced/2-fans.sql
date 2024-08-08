-- An SQL script that ranks country origins of bands, ordered by the number
-- of (non-unique) fans with the following requirements:
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: origin and nb_fans

USE bands_db;
SELECT
    origin,
    SUM(nb_fans) AS total_fans
FROM
    metal_bands
GROUP BY
    origin
ORDER BY
    total_fans DESC;

