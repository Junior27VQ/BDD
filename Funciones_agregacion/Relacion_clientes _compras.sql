--Relacion clientes con compras
--Funcion de agregacion 1:
select cl.cedula, sum(cast(co.monto as numeric)) as monto_total_compras 
from clientes cl, compras co
where cl.cedula = co.cedula
group by cl.cedula
--Funcion de agregacion 2:
select co.fecha_creacion, count(*) as total_compras
from clientes cl, compras co
where cl.cedula = co.cedula and co.fecha_creacion = '2025/11/20'
group by co.fecha_creacion 
--Mostrar todos los atos en ambas tablas
select * 
from clientes cl, compras co
where cl.cedula = co.cedula
