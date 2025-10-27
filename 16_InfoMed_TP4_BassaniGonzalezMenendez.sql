SELECT 
  m.nombre   AS medico,
  p.nombre   AS paciente,
  COUNT(*)   AS total_consultas
FROM Consultas c
JOIN Medicos   m ON m.id_medico   = c.id_medico
JOIN Pacientes p ON p.id_paciente = c.id_paciente
GROUP BY m.nombre, p.nombre
ORDER BY total_consultas DESC, m.nombre, p.nombre;
