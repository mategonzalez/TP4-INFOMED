create or replace View PacientesConEdad AS
select
	id_paciente,
    nombre,
    fecha_nacimiento,
    DATE_PART('year', AGE(CURRENT_DATE, fecha_nacimiento))::INT AS edad,
    numero, calle, ciudad, id_sexo
    from pacientes;