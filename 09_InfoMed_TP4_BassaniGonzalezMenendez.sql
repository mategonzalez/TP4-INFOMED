SELECT 
    m.nombre AS "Nombre del médico",
    COUNT(r.id_receta) AS "Cantidad de recetas"
FROM Recetas r          -- r = Recetas
JOIN Medicos m          -- m = Medicos
    ON m.id_medico = r.id_medico
GROUP BY m.nombre
ORDER BY "Cantidad de recetas" DESC;


