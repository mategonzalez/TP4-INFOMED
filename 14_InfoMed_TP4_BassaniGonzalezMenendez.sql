SELECT 
  med.nombre AS medicamento,
  COUNT(*)   AS total_recetas
FROM Recetas r
JOIN Medicamentos med ON med.id_medicamento = r.id_medicamento
GROUP BY med.nombre
ORDER BY total_recetas DESC, med.nombre
FETCH FIRST 1 ROW WITH TIES;