SELECT
    p.nombre AS paciente,
    c.fecha,
    c.diagnostico
FROM Consultas c
JOIN Pacientes p ON p.id_paciente = c.id_paciente
WHERE c.fecha >= '2024-08-01'
  AND c.fecha < '2024-09-01'
ORDER BY c.fecha;
