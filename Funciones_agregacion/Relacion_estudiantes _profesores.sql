--Relacion estudiantes con profesores
--Funcion de agregacion 1:
select es.codigo_profesor, count(*) as total_estudiante 
from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
group by es.codigo_profesor
--Funcion de agregacion 2: para octenr la edad promedio se usanmultiples funciones de SQL
select ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE)-EXTRACT(YEAR FROM fecha_nacimiento))) as edad_promedio
from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
--Mostrar todos los atos en ambas tablas
select * 
from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
