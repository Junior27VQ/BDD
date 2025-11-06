--crear tabla de registro_entrada
drop table registro_entrada

create table registro_entrada(
    codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registo_pk primary key(codigo_registro)
)

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(123,'1234567890','22/05/2020','10:55')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(456,'2345678901','20/10/2010','12:55')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(789,'3456789012','02/05/2012','11:55')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(147,'4567890123','08/05/2012','12:30')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(258,'5678901234','23/10/2000','10:45')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(369,'6789012345','13/05/2010','10:25')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(963,'7890123456','22/12/1999','15:05')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(852,'8901234567','01/05/2022','12:15')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(741,'9012345678','28/10/2009','16:25')

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(951,'0123456789','21/06/2015','12:05')

select * from registro_entrada
