--Relacion registros_entrda con empleado
--Funcion de agregacion 1:
select re.cedula_empleado, count(*) as total_registros_entrada
from registro_entrada re, empleado_registro er
where re.codigo_empleado = er.codigo_empleado
group by re.cedula_empleado
--Funcion de agregacion 2:
select min(re.fecha) as fecha_minima, max(re.fecha) as fecha_maxima
from registro_entrada re, empleado_registro er
where re.codigo_empleado = er.codigo_empleado
--Mostrar todos los atos en ambas tablas
select * 
from registro_entrada re, empleado_registro er
where re.codigo_empleado = er.codigo_empleado