SELECT
  med.nombre AS medicamento,
  COUNT(*)   AS veces_prescripto
FROM Recetas r
JOIN Medicamentos med
  ON med.id_medicamento = r.id_medicamento
WHERE r.id_medico = 2
GROUP BY med.nombre
HAVING COUNT(*) > 1
ORDER BY veces_prescripto DESC, med.nombre;

