--selecciones de productos
select * from productos 
where nombre like('Q%')

select * from productos 
where descripcion is null


select precio,* from productos 
where precio between money(2) and money(3)
