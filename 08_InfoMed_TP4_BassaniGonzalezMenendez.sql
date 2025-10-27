SELECT 
    p.ciudad,
    s.descripcion AS sexo,
    COUNT(p.id_paciente) AS cantidad_pacientes
FROM Pacientes p
JOIN SexoBiologico s ON p.id_sexo = s.id_sexo
GROUP BY p.ciudad, s.descripcion
ORDER BY p.ciudad, s.descripcion;

