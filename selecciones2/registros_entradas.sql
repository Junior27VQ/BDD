--seleccion2 de regitros_entradas
select * from registro_entrada
where (fecha between'2025/09/01' and '2025/09/30') or cedula_empleado like('17%')

select * from registro_entrada
where (fecha between'2025/08/01' and '2025/08/30') and cedula_empleado like('17%')
and (hora between'08:00' and '12:00')

select * from registro_entrada
where (fecha between'2025/08/01' and '2025/08/30') and cedula_empleado like('17%') and (hora between'08:00' and '12:00') 
or (fecha between'2020/09/01' and '2025/09/30') and cedula_empleado like('08%') and (hora between'09:00' and '13:00')

 