--seleccion de cuentas
select numero_cuenta,saldo from cuentas 
where saldo>money(100) 

select * from cuentas 
where fecha_creacion>='06/09/2025'  

select numero_cuenta,saldo from cuentas 
where fecha_creacion between'06/09/2025' and'06/11/2025' 