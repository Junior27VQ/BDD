--seleccionar productos
select * from productos
where stock=10 and stock<10

select nombre,stock from productos
where nombre like('%m%') and descripcion like('% %')

select nombre from productos
where descripcion is null or stock=0
