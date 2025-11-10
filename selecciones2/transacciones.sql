--seleccion2 de transacciones
select * from transacciones
where tipo='C' and numero_cuenta between '222001' and '22004'

select * from transacciones
where tipo='D' and fecha between '2025/05/01' and '2025/05/30'
and numero_cuenta between '22007' and '22010'

select * from transacciones
where cast(codigo as text) like'1%' and cast(codigo as text) like'%5'
and (numero_cuenta between '22002' and '22004' or fecha between '2025/05/26' and '2025/05/29')

