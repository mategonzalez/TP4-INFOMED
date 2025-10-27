SELECT
  p.nombre AS paciente,
  c.fecha  AS ultima_fecha,
  c.diagnostico
FROM Pacientes p
JOIN (
  SELECT id_paciente, MAX(fecha) AS max_fecha
  FROM Consultas
  GROUP BY id_paciente
) m ON m.id_paciente = p.id_paciente
JOIN Consultas c
  ON c.id_paciente = m.id_paciente
 AND c.fecha       = m.max_fecha
ORDER BY p.nombre;
