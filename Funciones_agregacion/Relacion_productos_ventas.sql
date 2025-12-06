--Relacion productos con ventas
--Funcion de agregacion 1:
select max(cast(p.precio as numeric)) as precio_maximo
from productos p, ventas v
where p.codigo = v.codigo_producto
--Funcion de agregacion 2:
select sum(v.cantidad) as cantidad_total_vendida
from productos p, ventas v
where p.codigo = v.codigo_producto
--Mostrar todos los atos en ambas tablas
select * 
from productos p, ventas v
where p.codigo = v.codigo_producto