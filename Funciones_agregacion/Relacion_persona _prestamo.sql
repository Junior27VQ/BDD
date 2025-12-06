--Relacion persona con prestamo
--Funcion de agregacion 1:
select pr.cedula, sum(cast(pr.monto as numeric)) as monto_total_prestamo 
from persona pe, prestamo pr
where pe.cedula = pr.cedula
group by pr.cedula
--Funcion de agregacion 2:
select count(*) as total_personas
from persona pe, prestamo pr
where pe.cedula = pr.cedula and pe.numero_hijos > 1
--Mostrar todos los atos en ambas tablas
select * 
from persona pe, prestamo pr
where pe.cedula = pr.cedula