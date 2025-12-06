--Relacion transacciones con banco
--Funcion de agregacion 1:
select count(*) as total_transacciones_credito
from transacciones t, banco b
where t.codigo = b.codigo_transaccion and t.tipo = 'C'
--Funcion de agregacion 2:
select t.numero_cuenta, ROUND(AVG(CAST(t.monto as decimal)),2) as monto_promedio
from transacciones t, banco b
where t.codigo = b.codigo_transaccion
group by t.numero_cuenta
--Mostrar todos los atos en ambas tablas
select * 
from transacciones t, banco b
where t.codigo = b.codigo_transaccion