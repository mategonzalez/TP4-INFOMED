SELECT ciudad, COUNT(id_paciente) AS "Cantidad de pacientes"
FROM Pacientes
GROUP BY ciudad;
