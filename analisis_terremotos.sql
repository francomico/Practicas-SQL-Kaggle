-- Total de sismos por año
SELECT global_earthquakes_2020_2026.year, count(global_earthquakes_2020_2026.id) as total_sismos
FROM global_earthquakes_2020_2026
GROUP BY year;

-- Promedio de magnitud en la dedacada actual
SELECT global_earthquakes_2020_2026.decade, avg(coalesce(global_earthquakes_2020_2026.mag, 0)) as promedio_mag
FROM global_earthquakes_2020_2026
GROUP BY global_earthquakes_2020_2026.decade;

-- Top 20 peores sismos con limpieza en la columna ubicacion
SELECT global_earthquakes_2020_2026.id, global_earthquakes_2020_2026.year, lower(trim(global_earthquakes_2020_2026.place)) as ubicacion_estandar, cast(global_earthquakes_2020_2026.mag as INTEGER) as mag_entero
FROM global_earthquakes_2020_2026
order by mag_entero DESC
LIMIT 20;
