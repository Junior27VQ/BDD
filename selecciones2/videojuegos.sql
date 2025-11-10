--seleccion2 de videojuegos
select * from videojuegos
where nombre like('%c%') or valoracion=7

select * from videojuegos
where cast(codigo as text) like'3%' and cast(codigo as text) like'%5'
or valoracion=7

select * from videojuegos
where descripcion='gurrea' and  (valoracion>7 and nombre like('C%')) 
or (valoracion>8 and nombre like('D%'))
