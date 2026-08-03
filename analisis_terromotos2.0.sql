select global_earthquakes_2020_2026.id, global_earthquakes_2020_2026.year, 
lower(trim(global_earthquakes_2020_2026.place)) as ubicacion_limpia, 
protocolos_alerta.magnitud_escala,
protocolos_alerta.nivel_alerta,
protocolos_alerta.equipo_respuesta
FROM global_earthquakes_2020_2026
INNER JOIN protocolos_alerta
ON CAST(global_earthquakes_2020_2026.mag as INTEGER) = protocolos_alerta.magnitud_escala
ORDER BY global_earthquakes_2020_2026.year DESC
LIMIT 10;