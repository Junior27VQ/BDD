--Relacion cuenta con usuario
--Funcion de agregacion 1:
select AVG(cast(c.saldo as numeric)) 
from cuentas c, usuario u
where c.cedula_propietario = u.cedula
and u.cedula = '25813';
--Funcion de agregacion 2:
select u.tipo_cuenta, count(*)
from cuentas c, usuario u
where c.cedula_propietario = u.cedula
group by u.tipo_cuenta
--Mostrar todos los atos en ambas tablas
select * 
from cuentas c, usuario u
where c.cedula_propietario = u.cedula
