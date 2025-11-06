--crear actualizacion de cuentas
select * from cuentas

update cuentas set saldo=10
where cedula_propietario like('17%')
