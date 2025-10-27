SELECT 
  p.nombre AS paciente,
  COUNT(r.id_receta) AS cantidad_recetas
FROM Pacientes p
LEFT JOIN Recetas r
  ON r.id_paciente = p.id_paciente
GROUP BY p.nombre
ORDER BY cantidad_recetas DESC, p.nombre;
