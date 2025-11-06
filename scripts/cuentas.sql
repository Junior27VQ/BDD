--crear tabla de cuentas
drop table cuentas

create table cuentas(
    numero_cuenta char(5) not null,
    cedula_propietario char(5) not null,
    fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','54321','05/10/2001',350)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('67890','09876','07/01/2007',450)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('98745','54789','25/05/1981',3000)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('61230','03216','08/09/2005',450)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('75321','12357','15/11/2010',250)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('95123','32159','25/07/2015',355)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12357','75321','06/06/2009',357)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('78951','15987','04/12/2020',3500)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('36951','15963','08/11/2003',450)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('85207','70258','07/04/2019',1250)

select * from cuentas