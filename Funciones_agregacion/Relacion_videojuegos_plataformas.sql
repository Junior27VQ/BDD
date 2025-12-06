--Relacion videojuegos con plataformas
--Funcion de agregacion 1:
select p.codigo_videojuego, count(*) as total_plataformas
from videojuegos v, plataformas p
where v.codigo = p.codigo_videojuego
group by p.codigo_videojuego
--Funcion de agregacion 2:
select ROUND(AVG(v.valoracion),2) as valoracion_promedio
from videojuegos v, plataformas p
where v.codigo = p.codigo_videojuego
--Mostrar todos los atos en ambas tablas
select * 
from videojuegos v, plataformas p
where v.codigo = p.codigo_videojuego