--seleccion de cuentas
select numero_cuenta,saldo from cuentas
where saldo>money(100) and saldo<money(1000)

select * from cuentas
where fecha_creacion>'2024/11/07' and fecha_creacion<'2025/11/07/'

select * from cuentas
where saldo=money(0) and cedula_propietario like('%2')
