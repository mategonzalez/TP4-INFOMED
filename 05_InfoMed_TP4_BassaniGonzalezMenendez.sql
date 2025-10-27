select *, CASE
when lower (SUBSTRING(trim(ciudad),1,1)) = 'b' then 'Buenos Aires'
when lower (SUBSTRING(trim(ciudad),1,1)) = 'c' then 'Córdoba'
when lower (SUBSTRING(trim(ciudad),1,1)) = 'm' then 'Mendoza'
when lower (SUBSTRING(trim(ciudad),1,1)) = 's' then 'Santa Fe'
else 'Rosario'
end as ciudades_corregidas
from pacientes;

update pacientes set ciudad=case 
when lower (SUBSTRING(trim(ciudad),1,1)) = 'b' then 'Buenos Aires'
when lower (SUBSTRING(trim(ciudad),1,1)) = 'c' then 'Córdoba'
when lower (SUBSTRING(trim(ciudad),1,1)) = 'm' then 'Mendoza'
when lower (SUBSTRING(trim(ciudad),1,1)) = 's' then 'Santa Fe'
else 'Rosario'
end;