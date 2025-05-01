-- list all bands with glam rock as their main style
-- statement to list the bands

SELECT band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
ORDER BY lifespan DESC;
