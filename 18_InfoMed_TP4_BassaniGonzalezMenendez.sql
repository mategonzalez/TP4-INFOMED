SELECT
  m.nombre AS medico,
  COUNT(DISTINCT c.id_paciente) AS cantidad_pacientes_distintos
FROM Consultas c
JOIN Medicos m ON m.id_medico = c.id_medico
GROUP BY m.nombre
ORDER BY cantidad_pacientes_distintos DESC, m.nombre; 